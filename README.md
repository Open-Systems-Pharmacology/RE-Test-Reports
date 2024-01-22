Reporting Engine Test Reports
================
Open System Pharmacology
2024-01-22

<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- 
Run testthat and get list of test results 
Note that "test_local" runs the scripts in ./R and then performs the tests
testResults includes a list per test script, which contains the following results
file, context, test, nb, failed, skipped, error, warning, user, system, real, passed, result

Turning the list to data.frame and extracting the relevant data will give a great overview of the test results
-->

| Global Success Rate | ![](https://geps.dev/progress/100) |
|---------------------|------------------------------------|

## Tests Overview

| Report                                                               | Test              | Status                                                             |   N | Success \[%\]                      | Warning \[%\] | Failed \[%\] |
|:---------------------------------------------------------------------|:------------------|:-------------------------------------------------------------------|----:|:-----------------------------------|:--------------|:-------------|
| [Aciclovir-Mean](./tests/Reports/Aciclovir-Mean)                     | Expected Files    | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |   1 | ![](https://geps.dev/progress/100) | 0%            | 0%           |
| [Aciclovir-Mean](./tests/Reports/Aciclovir-Mean)                     | Content of Report | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |   1 | ![](https://geps.dev/progress/100) | 0%            | 0%           |
| [Aciclovir-Mean](./tests/Reports/Aciclovir-Mean)                     | Expected Plots    | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |   6 | ![](https://geps.dev/progress/100) | 0%            | 0%           |
| [Aciclovir-Mean-SVG](./tests/Reports/Aciclovir-Mean-SVG)             | Expected Files    | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |   1 | ![](https://geps.dev/progress/100) | 0%            | 0%           |
| [Aciclovir-Mean-SVG](./tests/Reports/Aciclovir-Mean-SVG)             | Content of Report | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |   1 | ![](https://geps.dev/progress/100) | 0%            | 0%           |
| [Aciclovir-Mean-SVG](./tests/Reports/Aciclovir-Mean-SVG)             | Expected Plots    | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |   6 | ![](https://geps.dev/progress/100) | 0%            | 0%           |
| [Aciclovir-Population](./tests/Reports/Aciclovir-Population)         | Expected Files    | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |   1 | ![](https://geps.dev/progress/100) | 0%            | 0%           |
| [Aciclovir-Population](./tests/Reports/Aciclovir-Population)         | Content of Report | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |   1 | ![](https://geps.dev/progress/100) | 0%            | 0%           |
| [Aciclovir-Population](./tests/Reports/Aciclovir-Population)         | Expected Plots    | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |  24 | ![](https://geps.dev/progress/100) | 0%            | 0%           |
| [Raltegravir-Absorption](./tests/Reports/Raltegravir-Absorption)     | Expected Files    | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |   1 | ![](https://geps.dev/progress/100) | 0%            | 0%           |
| [Raltegravir-Absorption](./tests/Reports/Raltegravir-Absorption)     | Content of Report | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |   1 | ![](https://geps.dev/progress/100) | 0%            | 0%           |
| [Raltegravir-Absorption](./tests/Reports/Raltegravir-Absorption)     | Expected Plots    | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |   2 | ![](https://geps.dev/progress/100) | 0%            | 0%           |
| [Raltegravir-Mass-Balance](./tests/Reports/Raltegravir-Mass-Balance) | Expected Files    | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |   1 | ![](https://geps.dev/progress/100) | 0%            | 0%           |
| [Raltegravir-Mass-Balance](./tests/Reports/Raltegravir-Mass-Balance) | Content of Report | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |   1 | ![](https://geps.dev/progress/100) | 0%            | 0%           |
| [Raltegravir-Mass-Balance](./tests/Reports/Raltegravir-Mass-Balance) | Expected Plots    | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |  10 | ![](https://geps.dev/progress/100) | 0%            | 0%           |

## Using Reports and Scripts as template

Users can find the reports and their description in the
[/Reports](./Reports) folder as well as the corresponding R code in the
[/R](./R) folder.

Models, Observed and Simulated Data are respectively available in the
[Models](./Models) and [Data](./Data) folders.

Here is the summary of the reports, their scripts and their run time
currently available in this repository:

|                          | Report                                                                   | Script                                                                     | Run Time |
|:-------------------------|:-------------------------------------------------------------------------|:---------------------------------------------------------------------------|:---------|
| Aciclovir-Mean           | [Aciclovir-Mean](./Reports/Aciclovir-Mean/Report.md)                     | [report-aciclovir-mean-svg.R](./R/report-aciclovir-mean-svg.R)             | 0.6 min  |
| Aciclovir-Mean-SVG       | [Aciclovir-Mean-SVG](./Reports/Aciclovir-Mean-SVG/Report.md)             | [report-aciclovir-mean.R](./R/report-aciclovir-mean.R)                     | 0.8 min  |
| Aciclovir-Population     | [Aciclovir-Population](./Reports/Aciclovir-Population/Report.md)         | [report-aciclovir-population.R](./R/report-aciclovir-population.R)         | 9.1 min  |
| Raltegravir-Absorption   | [Raltegravir-Absorption](./Reports/Raltegravir-Absorption/Report.md)     | [report-raltegravir-absorption.R](./R/report-raltegravir-absorption.R)     | 0.9 min  |
| Raltegravir-Mass-Balance | [Raltegravir-Mass-Balance](./Reports/Raltegravir-Mass-Balance/Report.md) | [report-raltegravir-mass-balance.R](./R/report-raltegravir-mass-balance.R) | 0.6 min  |
