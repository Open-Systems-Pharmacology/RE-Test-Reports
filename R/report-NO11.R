#' @title report-NO11
#' @description
#' Report from Test NO11 initial RE testing

# Clean environent and (re-)load the ospsuite.reportingengine package
rm(list = ls())
library(ospsuite.reportingengine)
ospsuite::removeAllUserDefinedPKParameters()

# Define inputs for workflow
simulationFile <- "Models/Theophylline (Boeckmann 1994) PO for fitting (fitted specific int.perm) popsim.pkml"
reportFolder <- "tests/Reports/Test-NO11"
reportTitle <- "Report NO11"

# Define data source
dataSource <- DataSource$new(
  dataFile = "Data/test-NO11/Theophylline_NMdat.nmdat",
  metaDataFile = "Data/test-NO11/tpDictionary.csv",
  caption = "Boeckmann 1994"
)

# Define the simulation outputs possibly with their PK parameters
pkCmax <- PkParameterInfo$new(pkParameter = "C_max", displayUnit = "mg/l")
pkTmax <- PkParameterInfo$new(pkParameter = "t_max", displayUnit = "h")
pkCtend <- PkParameterInfo$new(pkParameter = "C_tEnd", displayUnit = "mg/l")
pkAuCtend <- PkParameterInfo$new(pkParameter = "AUC_tEnd", displayUnit = "mg*h/l")
pkThalf <- PkParameterInfo$new(pkParameter = "Thalf", displayUnit = "h")
pkCL <- PkParameterInfo$new(pkParameter = "CL", displayUnit = "ml/min/kg")
pkVss <- PkParameterInfo$new(pkParameter = "Vss", displayUnit = "ml/kg")
pkVd <- PkParameterInfo$new(pkParameter = "Vd", displayUnit = "ml/kg")

output <- Output$new(
  path = "Organism|PeripheralVenousBlood|Theophylline|Plasma (Peripheral Venous Blood)",
  displayName = "Theophylline plasma concentration",
  displayUnit = "mg/l",
  dataDisplayName = "Study data 9999",
  dataSelection = "ALL",
  pkParameters = c(pkCmax, pkTmax, pkCtend, pkAuCtend, pkThalf, pkCL, pkVss, pkVd)
)

# Define the simulation sets possibly mapping simulations to observed data
simulationSet <- SimulationSet$new(
  simulationFile = simulationFile,
  simulationSetName = "PO320mg",
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
workflow$inactivateTasks()
workflow$activateTasks(tasks = c(
  "simulate",
  "calculatePKParameters",
  "plotTimeProfilesAndResiduals",
  "plotPKParameters"
))

# Run the workflow
workflow$runWorkflow()
