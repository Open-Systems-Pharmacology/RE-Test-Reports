#' @title report-qualification-ddi
#' @description
#' Qualification Report for `Yuri05/TestReport/TestInput_01_DDI` repository

# Clean environment and (re-)load the ospsuite.reportingengine package
rm(list = ls())
library(ospsuite.reportingengine)

# Define input parameters for the workflow
qualificationProject <- "TestInput01_DDI"
snapshotFile <- "qualification_plan.json"
workingDirectory <- normalizePath(qualificationProject, mustWork = FALSE, winslash = "/")
qualificationRunnerFolder <- "QualificationRunner/QualificationRunner"
pkSimPortableFolder <- "PK-Sim/PK-Sim"
versionInfo <- QualificationVersionInfo$new("1.0", "11.0", "3.0")

# Load repository content and clean up downloads
dir.create(workingDirectory)
file.copy("Data/test-DDI/Input", workingDirectory, recursive = TRUE)

#' @description Code hereafter is adapted from `createQualificationReport()` template
qualificationPlanName <- "qualification_plan.json"
qualificationPlanFile <- file.path(workingDirectory, "input", qualificationPlanName)

#' The default outputs of qualification runner should be generated under `<workingDirectory>/re_input`
reInputFolder <- file.path(workingDirectory, "re_input")
#' The default outputs or RE should be generated under `<workingDirectory>/re_output`
reOutputFolder <- file.path(workingDirectory, "re_output")

#' Configuration Plan created from the Qualification Plan by the Qualification Runner
configurationPlanName <- "report-configuration-plan"
configurationPlanFile <- file.path(reInputFolder, paste0(configurationPlanName, ".json"))

#' Set watermark that will appear in all generated plots
#' Default is no watermark. `Label` objects from `tlf` package can be used to specify watermark font.
watermark <- "draft"

#' If not set, report created will be named `report.md` and located in the workflow folder namely `reOutputFolder`
#' Here, the report will be copied in the test reports at the end of the workflow
reportFolder <- file.path("tests/Reports", qualificationProject)
reportPath <- file.path(reportFolder, "Report.md")

#' @description Start **Qualification Runner** to generate inputs for the reporting engine
#' @param logFile If not `null` is passed internally via the `-l` option
logFile <- NULL
#' @param logLevel If not `null` is passed internally via the `--logLevel` option
logLevel <- NULL
#' @param overwrite If `true`, eventual results from the previous run of the QualiRunner/RE will be removed first
overwrite <- TRUE

startQualificationRunner(
  qualificationRunnerFolder = qualificationRunnerFolder,
  qualificationPlanFile = qualificationPlanFile,
  outputFolder = reInputFolder,
  pkSimPortableFolder = pkSimPortableFolder,
  configurationPlanName = configurationPlanName,
  overwrite = overwrite,
  logFile = logFile,
  logLevel = logLevel
)

#' @description Run Qualification Workflow to generate inputs for the reporting engine
titlePageFile <- file.path(reInputFolder, "Intro/titlepage.md")
addTitlePage <- all(
  !is.null(versionInfo),
  file.exists(titlePageFile)
)
if (addTitlePage) {
  adjustTitlePage(titlePageFile, qualificationVersionInfo = versionInfo)
}

#' Load `QualificationWorkflow` object from configuration plan
workflow <- loadQualificationWorkflow(
  workflowFolder = reOutputFolder,
  configurationPlanFile = configurationPlanFile
)

#' Set the name of the final report
workflow$reportFilePath <- reportPath
#' Do not export word report
workflow$createWordReport <- FALSE

#' Set watermark. If set, it will appear in all generated plots
workflow$setWatermark(watermark)

#' Run the `QualificationWorklfow`
workflow$runWorkflow()

# Copy logs to get final run time on reports
file.copy(
  from = file.path(reOutputFolder, "log-info.txt"),
  to = reportFolder,
  overwrite = TRUE
)
