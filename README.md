Reporting Engine Test Reports
================
Open System Pharmacology
2023-12-07

<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- 
Run testthat and get list of test results 
Note that "test_local" runs the scripts in ./R and then performs the tests
testResults includes a list per test script, which contains the following results
file, context, test, nb, failed, skipped, error, warning, user, system, real, passed, result

Turning the list to data.frame and extracting the relevant data will give a great overview of the test results
-->

## Overview

| Report                                 | Test              | Status                                                             | Duration \[ms\] |   N | Success \[%\] | Warning \[%\] | Failed \[%\] |
|:---------------------------------------|:------------------|:-------------------------------------------------------------------|----------------:|----:|--------------:|--------------:|-------------:|
| [Aciclovir](./tests/Reports/Aciclovir) | Expected Files    | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |            0.03 |   1 |           100 |             0 |            0 |
| [Aciclovir](./tests/Reports/Aciclovir) | Content of Report | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |            0.01 |   1 |           100 |             0 |            0 |
| [Aciclovir](./tests/Reports/Aciclovir) | Expected Plots    | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |            2.10 |   6 |           100 |             0 |            0 |

## Using report scripts as template

User can find the R code for creating the reports in the [/R](./R)
folder. Currently, the following scripts are available:

- [report-aciclovir.R](./R/report-aciclovir.R)

Models and Observed Data are respectively available in the
[Models](./Models) and [Data](./ObservedData) folders.
