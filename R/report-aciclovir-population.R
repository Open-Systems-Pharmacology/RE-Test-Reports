#' @title report-aciclovir
#' @description
#' Report for the Aciclovir parallel comparison population workflow

# Clean environent and (re-)load the ospsuite.reportingengine package
rm(list=ls())
library(ospsuite.reportingengine)

# Define inputs for workflow
simulationFile <- "Models/Aciclovir.pkml"
adultPopulationFile <- "Data/adult-population.csv"
childrenPopulationFile <- "Data/children-population.csv"
reportFolder <- "tests/Reports/Aciclovir-Population"
reportTitle <- "Aciclovir Population Parallel Workflow Report"

# Define the simulation outputs possibly with their PK parameters
output <- Output$new(
  path = "Organism|PeripheralVenousBlood|Aciclovir|Plasma (Peripheral Venous Blood)",
  displayName = "Aciclovir Plasma",
  pkParameters = c("AUC_tEnd", "CL", "Vss", "C_max")
)

# Define the simulation sets possibly mapping simulations to observed data
adultSimulationSet <- PopulationSimulationSet$new(
  referencePopulation = TRUE,
  simulationFile = simulationFile,
  populationFile = adultPopulationFile,
  simulationSetName = "Aciclovir Adults",
  outputs = output
)
childrenSimulationSet <- PopulationSimulationSet$new(
  simulationFile = simulationFile,
  populationFile = childrenPopulationFile,
  simulationSetName = "Aciclovir Children",
  outputs = output
)

# Define the workflow and its result folder
workflow <- PopulationWorkflow$new(
  workflowType = PopulationWorkflowTypes$parallelComparison,
  simulationSets = c(adultSimulationSet, childrenSimulationSet),
  workflowFolder = reportFolder,
  reportTitle = reportTitle,
  # To speed up the report generation, we skip the Word report here
  createWordReport = FALSE
)

# Define the workflow tasks
workflow$activateTasks()
workflow$inactivateTasks(tasks = c("plotDemography"))

# Tune some settings for prettier rendering
# e.g. update color palette settings to get prettier tornado plots
workflow$plotSensitivity$settings$colorPalette <- "turbo"

# Run the workflow
workflow$runWorkflow()
