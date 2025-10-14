#' @title report-NO10
#' @description
#' Report from Test NO10 initial RE testing

if(FALSE){
# Clean environent and (re-)load the ospsuite.reportingengine package
rm(list = ls())
library(ospsuite.reportingengine)
ospsuite::removeAllUserDefinedPKParameters()

# Define inputs for workflow
simulationFile <- "Models/Adults_SingleIV_Bolus.pkml"
adultPopulation <- "Data/test-NO9/Adults_18_100_years-Population.csv"
child03Population <- "Data/test-NO9/Kids_0_3_years-Population.csv"
child36Population <- "Data/test-NO9/Kids_3_6_years-Population.csv"
child69Population <- "Data/test-NO9/Kids_6_9_years-Population.csv"
reportFolder <- "tests/Reports/Test-NO10"
reportTitle <- "Report NO10"

# Define the simulation outputs possibly with their PK parameters
pkCMax <- PkParameterInfo$new(pkParameter = "C_max", displayUnit = "µg/l")
pkTmax <- PkParameterInfo$new(pkParameter = "t_max", displayUnit = "h")
pkCtend <- PkParameterInfo$new(pkParameter = "C_tEnd", displayUnit = "µg/l")
pkAUC <- PkParameterInfo$new(pkParameter = "AUC_tEnd", displayUnit = "µg*h/l")
pkCL <- PkParameterInfo$new(pkParameter = "CL", displayUnit = "ml/min/kg")
pkVss <- PkParameterInfo$new(pkParameter = "Vss", displayUnit = "ml/kg")

output <- Output$new(
  path = "Organism|PeripheralVenousBlood|C1|Plasma (Peripheral Venous Blood)",
  displayName = "C1 plasma", displayUnit = "µg/l",
  pkParameters = c(pkAUC, pkCMax, pkCtend, pkTmax, pkCL, pkVss)
)

# Define the simulation sets possibly mapping simulations to observed data
adulSet <- PopulationSimulationSet$new(
  referencePopulation = TRUE,
  simulationSetName = "single IV administration",
  populationName = "adult",
  simulationFile = simulationFile,
  outputs = output,
  populationFile = adultPopulation
)
child03Set <- PopulationSimulationSet$new(
  simulationSetName = "children_0_3y",
  populationName = "0-3y",
  simulationFile = simulationFile,
  outputs = output,
  populationFile = child03Population
)
child36Set <- PopulationSimulationSet$new(
  simulationSetName = "children_3_6y",
  populationName = "3-6y",
  simulationFile = simulationFile,
  outputs = output,
  populationFile = child36Population
)
child69Set <- PopulationSimulationSet$new(
  simulationSetName = "children_6_9y",
  populationName = "6-9y",
  simulationFile = simulationFile,
  outputs = output,
  populationFile = child69Population
)

# Define the workflow and its result folder
workflow <- PopulationWorkflow$new(
  workflowType = PopulationWorkflowTypes$pediatric,
  simulationSets = c(adulSet, child03Set, child36Set, child69Set),
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
}
