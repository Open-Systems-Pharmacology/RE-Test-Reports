#' @title report-NO8
#' @description
#' Report from Test NO8 initial RE testing

# Clean environent and (re-)load the ospsuite.reportingengine package
rm(list = ls())
library(ospsuite.reportingengine)
ospsuite::removeAllUserDefinedPKParameters()

# Define inputs for workflow
simulationFile <- "Models/TestPopulationSimulation.pkml"
populationFile <- "Data/test-NO8/Pop_10.csv"
reportFolder <- "tests/Reports/Test-NO8"
reportTitle <- "Report NO8"

# Define the simulation outputs possibly with their PK parameters
pkCMax <- PkParameterInfo$new(pkParameter = "C_max", displayUnit = "mg/l")
pkTmax <- PkParameterInfo$new(pkParameter = "t_max", displayUnit = "h")
pkCtend <- PkParameterInfo$new(pkParameter = "C_tEnd", displayUnit = "µg/l")
pkAUC <- PkParameterInfo$new(pkParameter = "AUC_tEnd", displayUnit = "µg*h/l")
pkCL <- PkParameterInfo$new(pkParameter = "CL", displayUnit = "ml/min/kg")
pkVss <- PkParameterInfo$new(pkParameter = "Vss", displayUnit = "ml/kg")

outPlasma <- Output$new(
  path = "Organism|PeripheralVenousBlood|Aciclovir|Plasma (Peripheral Venous Blood)",
  displayName = "C1 plasma",
  displayUnit = "µg/l",
  color = "#CE3D32", fill = "#CE3D32",
  pkParameters = c(pkAUC, pkCMax, pkCtend, pkTmax, pkCL, pkVss)
)

outBone <- Output$new(
  path = "Organism|Bone|Intracellular|Aciclovir|Concentration in container",
  displayName = "C1 Bone",
  displayUnit = "µg/l",
  color = "#749B58", fill = "#749B58",
  pkParameters = c(pkAUC, pkCMax, pkCtend, pkTmax, pkCL, pkVss)
)

# Define the simulation sets possibly mapping simulations to observed data
simulationSet <- PopulationSimulationSet$new(
  simulationSetName = "single IV application",
  simulationFile = simulationFile,
  outputs = c(outPlasma, outBone),
  populationFile = populationFile
)

# Define the workflow and its result folder
workflow <- PopulationWorkflow$new(
  workflowType = PopulationWorkflowTypes$parallelComparison,
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
  "plotPKParameters",
  "plotDemography"
))

# Run the workflow
workflow$runWorkflow()
