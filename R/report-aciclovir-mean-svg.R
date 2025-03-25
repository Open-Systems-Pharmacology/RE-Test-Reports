#' @title report-aciclovir-mean
#' @description
#' Report for the Aciclovir mean model workflow

# Clean environent and (re-)load the ospsuite.reportingengine package
rm(list=ls())
library(ospsuite.reportingengine)

# Set the default plot format to SVG
setDefaultPlotFormat(format = "svg")

# Define inputs for workflow
simulationFile <- "Models/Aciclovir.pkml"
reportFolder <- "tests/Reports/Aciclovir-Mean-SVG"
reportTitle <- "Aciclovir Mean Model Report"

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
  reportTitle = reportTitle,
  # To speed up the report generation, we skip the Word report here
  createWordReport = FALSE
)

# Define the workflow tasks
workflow$activateTasks()
workflow$inactivateTasks(tasks = c("plotMassBalance", "plotAbsorption"))

# Tune some settings for prettier rendering
# e.g. update color palette settings to get prettier bar plots
workflow$plotSensitivity$settings$colorPalette <- "turbo"

# Run the workflow
workflow$runWorkflow()

resetRESettingsToDefault()
