reOutputFolder <- "report-qualification"
configurationPlanFile <- "Data/configuration-plan.json"

# Load and run test qualification workflow
workflow <- loadQualificationWorkflow(
  workflowFolder = reOutputFolder,
  configurationPlanFile = configurationPlanFile
)
# Turn off docx conversion
workflow$createWordReport <- FALSE
workflow$runWorkflow()

# Turn markdown into html report for snapshot comparison
rmarkdown::render(
  workflow$reportFilePath, 
  rmarkdown::html_document(), 
  quiet = TRUE
  )

# Take snapshot of the rendered report
webshot::webshot(
  url = sub(".md", ".html", workflow$reportFilePath), 
  file = paste0(reOutputFolder, ".png")
  )

test_that("Report is same as reference", {
  local_edition(3)
  expect_snapshot_file(
    path = paste0(reOutputFolder, ".png")
    )
})
