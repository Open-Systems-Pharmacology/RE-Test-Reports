# Reference reports are in Reports directory
# Tested reports are in tests/Reports directory

# Needs to wrap test failures as warnings
# to get testthat report even if some tests fail

expectEqual <- function(x, y, label) {
  expect_true(all(x == y), label = label)
}

expectFiles <- function(testFiles, refFiles) {
  return(expectEqual(
    x = testFiles,
    y = refFiles,
    label = setdiff(union(testFiles, refFiles), intersect(testFiles, refFiles))
  ))
}

expectKnownReport <- function(testReport, refReport) {
  return(expectEqual(
    x = readLines(testReport),
    y = readLines(refReport),
    label = testReport
  ))
}

expectKnownImage <- function(testFile, refFile) {
  if (grepl(pattern = "svg", x = testFile)) {
    return(expectEqual(
      x = rsvg::rsvg(testFile),
      y = rsvg::rsvg(refFile),
      label = testFile
    ))
  }
  return(expectEqual(
    x = png::readPNG(source = testFile),
    y = png::readPNG(source = refFile),
    label = testFile
  ))
}

resultsToTest <- data.frame(
  name = c(
    "Simulation Results", "PK Analysis Results", "Sensitivity Results",
    "Goodness of Fit", "PK Parameter Tables", "Sensitivity Tables",
    "Mass Balance Results", "Absorption Results", "Demography Results"
  ),
  folder = c(
    "SimulationResults", "PKAnalysisResults", "SensitivityResults",
    "TimeProfiles", "PKAnalysis", "Sensitivity",
    "MassBalance", "Absorption", "Demography"
  )
)

reportMappings <- jsonlite::fromJSON("report-mapping.json", simplifyVector = FALSE)

for (mapping in reportMappings) {
  context(mapping$Report)
  # No reference, only test if report has run
  if(!mapping$Reference){
    test_that("Report has run", {
      expect_true(file.exists(file.path("..", "Reports", mapping$Report, "Report.md")))
  })
  next
  }
  
  test_that("Expected Files", {
    expectFiles(
      list.files(path = file.path("../..", "Reports", mapping$Report), recursive = TRUE),
      list.files(path = file.path("..", "Reports", mapping$Report), recursive = TRUE)
    )
  })

  test_that("Content of Report", {
    referenceReport <- file.path("../..", "Reports", mapping$Report, "Report.md")
    testReport <- file.path("..", "Reports", mapping$Report, "Report.md")
    expectKnownReport(testReport, referenceReport)
  })

  test_that("Expected Plots", {
    referenceImages <- list.files(
      path = file.path("../..", "Reports", mapping$Report),
      recursive = TRUE,
      full.names = TRUE,
      pattern = "(png|svg)"
    )
    testImages <- list.files(
      path = file.path("..", "Reports", mapping$Report),
      recursive = TRUE,
      full.names = TRUE,
      pattern = "(png|svg)"
    )
    for (imageIndex in seq_along(referenceImages)) {
      expectKnownImage(testImages[imageIndex], referenceImages[imageIndex])
    }
  })

  for (resultIndex in seq_along(resultsToTest$name)) {
    test_that(paste("Expected", resultsToTest$name[resultIndex]), {
      referenceResults <- list.files(
        path = file.path("../..", "Reports", mapping$Report, resultsToTest$folder[resultIndex]),
        recursive = TRUE,
        full.names = TRUE,
        pattern = "csv"
      )
      testResults <- list.files(
        path = file.path("..", "Reports", mapping$Report, resultsToTest$folder[resultIndex]),
        recursive = TRUE,
        full.names = TRUE,
        pattern = "csv"
      )
      for (resultIndex in seq_along(referenceResults)) {
        expectKnownReport(testResults[resultIndex], referenceResults[resultIndex])
      }
    })
  }
}
