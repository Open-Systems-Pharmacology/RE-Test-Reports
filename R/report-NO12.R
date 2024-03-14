#' @title report-NO12
#' @description
#' Report from Test NO7 initial RE testing

# Clean environent and (re-)load the ospsuite.reportingengine package
rm(list=ls())
library(ospsuite.reportingengine)
ospsuite::removeAllUserDefinedPKParameters()

# Define inputs for workflow
simulationFile <- "Models/Theophylline (Boeckmann 1994) PO.pkml"
reportFolder <- "tests/Reports/Test-NO12"
reportTitle <- "Report NO12"

# Define data source
dataSource <- DataSource$new(
  dataFile = "Data/test-NO7/data.nmdat",
  metaDataFile = "Data/test-NO7/dict.csv",
  caption = "Boeckmann 1994"
)

# Define the simulation outputs possibly with their PK parameters
pkCmax <- PkParameterInfo$new(pkParameter = "C_max", displayUnit = "mg/l")
pkTmax <- PkParameterInfo$new(pkParameter = "t_max",  displayUnit = "h")
pkCtend <- PkParameterInfo$new(pkParameter = "C_tEnd",  displayUnit = "mg/l")
pkAuCtend <- PkParameterInfo$new(pkParameter = "AUC_tEnd",  displayUnit = "mg*h/l")

output <- Output$new(
  path = "Organism|PeripheralVenousBlood|Theophylline|Plasma (Peripheral Venous Blood)",
  displayName = "Theophylline",
  displayUnit = "mg/l",
  dataDisplayName = "Boeckmann 1994",
  dataSelection = "STUD==0",
  pkParameters = c(pkCmax, pkTmax, pkCtend, pkAuCtend)
)

# Define the simulation sets possibly mapping simulations to observed data
simulationSet <- SimulationSet$new(
  simulationFile = simulationFile,
  simulationSetName = "PO administration of 320 mg",
  outputs = output,
  dataSource = dataSource
)

# Define the workflow and its result folder
workflow <- MeanModelWorkflow$new(
  simulationSets = simulationSet,
  workflowFolder = reportFolder,
  reportTitle = reportTitle,
  # To speed up the report generation, we skip the Word report here
  createWordReport = FALSE
)

# Define the workflow tasks
workflow$activateTasks()
workflow$inactivateTasks(tasks = c("calculateSensitivity", "plotSensitivity"))

# Run the workflow
workflow$runWorkflow()
