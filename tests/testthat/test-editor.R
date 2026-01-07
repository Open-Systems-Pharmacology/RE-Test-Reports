context("Qualification Plan Editor")

test_that("Report has run after update", {
  expect_true(file.exists(file.path("..", "Reports", "Qualification_Plan_Editor", "Report.md")))
})

test_that("Qualification Plan Editor generated same report after update", {
  referenceReport <- file.path("..", "Reports", "Pediatric_Qualification_Package_UGT1A1_Ontogeny", "Report.md")
  testReport <- file.path("..", "Reports", "Qualification_Plan_Editor", "Report.md")
  expectKnownReport(testReport, referenceReport)
})

test_that("Qualification Plan Editor generated same figures after update", {
  referenceImages <- list.files(
    path = file.path("..", "Reports", "Pediatric_Qualification_Package_UGT1A1_Ontogeny"),
    recursive = TRUE,
    full.names = TRUE,
    pattern = "(png|svg)"
  )
  testImages <- list.files(
    path = file.path("..", "Reports", "Qualification_Plan_Editor"),
    recursive = TRUE,
    full.names = TRUE,
    pattern = "(png|svg)"
  )
  for (imageIndex in seq_along(referenceImages)) {
    expectKnownImage(testImages[imageIndex], referenceImages[imageIndex])
  }
})
