#' @title report-qualification-ckd
#' @description
#' Qualification Report for `Open-Systems-Pharmacology/Qualification-CKD` repository

# Clean environent and (re-)load the ospsuite.reportingengine package
rm(list=ls())
library(ospsuite.reportingengine)

# Load repository content
download.file('https://github.com/Open-Systems-Pharmacology/Qualification-CKD/archive/refs/heads/main.zip', destfile = 'Qualification-CKD.zip')
unzip('Qualification-CKD.zip', exdir = "Qualification-CKD")
unlink('Qualification-CKD.zip')

# Get `createQualificationReport()` template
source(system.file("extdata", "qualification-workflow-template.R", package = "ospsuite.reportingengine"))
createQualificationReport(
   qualificationRunnerFolder = "QualificationRunner",
   pkSimPortableFolder= "PK-Sim",
   createWordReport = FALSE,
   versionInfo = QualificationVersionInfo$new("1.0", "11.0", "3.0")
   )
