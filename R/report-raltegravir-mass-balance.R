#' @title report-raltegravir-mass-balance
#' @description
#' Report for the raltegravir mass balance

# Clean environent and (re-)load the ospsuite.reportingengine package
rm(list=ls())
library(ospsuite.reportingengine)
resetRESettingsToDefault()

# Define inputs for workflow
simulationFile1 <- "Models/Raltegravir-100mg-lactose-formulation.pkml"
simulationFile2 <- "Models/Raltegravir-100-mg-filmcoated-tablet.pkml"
reportFolder <- "tests/Reports/Raltegravir-Mass-Balance"
reportTitle <- "Raltegravir Mass Balance Report"

# Since only absorption task is performed, no need for output definition
# Define the simulation sets possibly mapping simulations to observed data
simulationSet1 <- SimulationSet$new(
  simulationFile = simulationFile1,
  simulationSetName = "Single Dose (100 mg)"
)
simulationSet2 <- SimulationSet$new(
  simulationFile = simulationFile2,
  simulationSetName = "Multiple Doses (100 mg)"
)

# Define the workflow and its result folder
workflow <- MeanModelWorkflow$new(
  simulationSets = c(simulationSet1, simulationSet2),
  workflowFolder = reportFolder,
  reportTitle = reportTitle,
  createWordReport = FALSE
)

# Define the workflow tasks
workflow$inactivateTasks()
workflow$activateTasks("plotMassBalance")

# Run the workflow
workflow$runWorkflow()
