#' @title report-aciclovir
#' @description 
#' Report for the Aciclovir model

# Clean environent and (re-)load the ospsuite.reportingengine package
rm(list=ls())
library(ospsuite.reportingengine)

# Define inputs for workflow
simulationFile <- "Models/Aciclovir.pkml"
reportFolder <- "tests/Reports/Aciclovir"

# Define the simulation outputs possibly with their PK parameters
output <- Output$new(
  path = "Organism|PeripheralVenousBlood|Aciclovir|Plasma (Peripheral Venous Blood)",
  displayName = "Aciclovir Plasma",
  color = "#CE3D32",
  pkParameters = c("AUC_tEnd", "CL", "Vss", "C_max")
)

# Define the simulation sets possibly mapping simulations to observed data
simulationSet <- SimulationSet$new(
  simulationFile = simulationFile,
  simulationSetName = "Aciclovir",
  outputs = output
)

# Define the workflow and its result folder
workflow <- MeanModelWorkflow$new(
  simulationSets = simulationSet,
  workflowFolder = reportFolder,
  createWordReport = FALSE
)

# Define the workflow tasks
workflow$activateTasks()
workflow$inactivateTasks(tasks = c("plotMassBalance", "plotAbsorption"))

# Update color palette settings to get prettier bar plots
workflow$plotSensitivity$settings$colorPalette <- "turbo"

# Run the workflow
workflow$runWorkflow()
