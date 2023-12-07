# Reference reports are in Reports directory
# Tested reports are in tests/Reports directory
reports <- list.dirs(path = "../Reports", recursive = FALSE, full.names = FALSE)

for (report in reports) {
  context(report)
  test_that("Expected Files", {
    expect_equal(
      list.files(path = file.path("../..", "Reports", report), recursive = TRUE),
      list.files(path = file.path("..", "Reports", report), recursive = TRUE)
    )
  })

  test_that("Content of Report", {
    referenceReport <- file.path("../..", "Reports", report, "Report.md")
    testReport <- file.path("..", "Reports", report, "Report.md")
    expect_equal(readLines(testReport), readLines(referenceReport))
  })

  test_that("Expected Plots", {
    referenceImages <- list.files(
      path = file.path("../..", "Reports", report),
      recursive = TRUE,
      full.names = TRUE,
      pattern = ".png"
    )
    testImages <- list.files(
      path = file.path("../..", "Reports", report),
      recursive = TRUE,
      full.names = TRUE,
      pattern = ".png"
    )
    for(imageIndex in seq_along(referenceImages)) {
      expect_equal(
        png::readPNG(source = referenceImages[imageIndex]),
        png::readPNG(source = testImages[imageIndex]),
        info = paste0("Image file:", referenceImages[imageIndex])
      )
    }
  })
}
