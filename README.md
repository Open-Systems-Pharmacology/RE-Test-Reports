Reporting Engine Test Reports
================
Open System Pharmacology
2025-04-28

<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- 
Run testthat and get list of test results 
Note that "test_local" runs the scripts in ./R and then performs the tests
testResults includes a list per test script, which contains the following results
file, context, test, nb, failed, skipped, error, warning, user, system, real, passed, result
&#10;Turning the list to data.frame and extracting the relevant data will give a great overview of the test results
-->

| 📚 Total Reports | 🕵 Total Tests | ⚠ Failed Tests | 📊 Global Success Rate |
|------------------|---------------|----------------|------------------------|
| 25               | 656           | 0              | 100 %                  |

## Test Infrastructure

<details>
<summary>
Click to expand
</summary>

    ## R version 4.5.0 (2025-04-11 ucrt)
    ## Platform: x86_64-w64-mingw32/x64
    ## Running under: Windows Server 2022 x64 (build 20348)
    ## 
    ## Matrix products: default
    ##   LAPACK version 3.12.1
    ## 
    ## locale:
    ## [1] LC_COLLATE=English_United States.utf8 
    ## [2] LC_CTYPE=English_United States.utf8   
    ## [3] LC_MONETARY=English_United States.utf8
    ## [4] LC_NUMERIC=C                          
    ## [5] LC_TIME=English_United States.utf8    
    ## 
    ## time zone: UTC
    ## tzcode source: internal
    ## 
    ## attached base packages:
    ## [1] stats     graphics  grDevices utils     datasets  methods   base     
    ## 
    ## other attached packages:
    ## [1] RE-Test-Reports_0.0.0.9000          ospsuite.reportingengine_2.3.0.9002
    ## [3] ospsuite_12.2.0.9014                rSharp_1.1.2.9000                  
    ## [5] tlf_1.6.0                           testthat_3.2.3                     
    ## [7] dplyr_1.1.4                        
    ## 
    ## loaded via a namespace (and not attached):
    ##  [1] gtable_0.3.6              xfun_0.52                
    ##  [3] ggplot2_3.5.2             tzdb_0.5.0               
    ##  [5] vctrs_0.6.5               tools_4.5.0              
    ##  [7] generics_0.1.3            parallel_4.5.0           
    ##  [9] tibble_3.2.1              pkgconfig_2.0.3          
    ## [11] data.table_1.17.0         RColorBrewer_1.1-3       
    ## [13] desc_1.4.3                lifecycle_1.0.4          
    ## [15] compiler_4.5.0            farver_2.1.2             
    ## [17] stringr_1.5.1             textshaping_1.0.0        
    ## [19] brio_1.1.5                litedown_0.7             
    ## [21] htmltools_0.5.8.1         yaml_2.3.10              
    ## [23] pillar_1.10.2             crayon_1.5.3             
    ## [25] tidyr_1.3.1               commonmark_1.9.5         
    ## [27] tidyselect_1.2.1          digest_0.6.37            
    ## [29] stringi_1.8.7             purrr_1.0.4              
    ## [31] showtextdb_3.0            rsvg_2.6.2               
    ## [33] labeling_0.4.3            cowplot_1.1.3            
    ## [35] rprojroot_2.0.4           fastmap_1.2.0            
    ## [37] grid_4.5.0                cli_3.6.5                
    ## [39] magrittr_2.0.3            pkgbuild_1.4.7           
    ## [41] readr_2.1.5               withr_3.0.2              
    ## [43] waldo_0.6.1               ospsuite.utils_1.7.0.9000
    ## [45] scales_1.4.0              showtext_0.9-7           
    ## [47] bit64_4.6.0-1             rmarkdown_2.29           
    ## [49] sysfonts_0.8.9            bit_4.6.0                
    ## [51] ggtext_0.1.2              png_0.1-8                
    ## [53] ragg_1.4.0                hms_1.1.3                
    ## [55] evaluate_1.0.3            knitr_1.50               
    ## [57] viridisLite_0.4.2         markdown_2.0             
    ## [59] rlang_1.1.6               gridtext_0.1.5           
    ## [61] Rcpp_1.0.14               glue_1.8.0               
    ## [63] xml2_1.3.8                pkgload_1.4.0            
    ## [65] svglite_2.1.3             vroom_1.6.5              
    ## [67] jsonlite_2.0.0            R6_2.6.1                 
    ## [69] systemfonts_1.2.2

</details>

## Using Reports and Scripts as template

Users can find the reports and their description in the
[/Reports](./Reports) folder as well as the corresponding R code in the
[/R](./R) folder.

Models, Observed and Simulated Data are respectively available in the
[Models](./Models) and [Data](./Data) folders.

Here is the summary of the reports, their scripts and their run time
currently available in this repository:

| Reference                                                                                                                                           | Test Report                                                                                                                      | Script                                                                           | Run Time |
|:----------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------|:---------|
| [Aciclovir-Mean](./Reports/Aciclovir-Mean)                                                                                                          | [Aciclovir-Mean](./tests/Reports/Aciclovir-Mean/Report.md)                                                                       | [report-aciclovir-mean.R](./R/report-aciclovir-mean.R)                           | 0.6 min  |
| [Aciclovir-Mean-SVG](./Reports/Aciclovir-Mean-SVG)                                                                                                  | [Aciclovir-Mean-SVG](./tests/Reports/Aciclovir-Mean-SVG/Report.md)                                                               | [report-aciclovir-mean-svg.R](./R/report-aciclovir-mean-svg.R)                   | 0.7 min  |
| [Aciclovir-Population](./Reports/Aciclovir-Population)                                                                                              | [Aciclovir-Population](./tests/Reports/Aciclovir-Population/Report.md)                                                           | [report-aciclovir-population.R](./R/report-aciclovir-population.R)               | 8 min    |
| [Raltegravir-Absorption](./Reports/Raltegravir-Absorption)                                                                                          | [Raltegravir-Absorption](./tests/Reports/Raltegravir-Absorption/Report.md)                                                       | [report-raltegravir-absorption.R](./R/report-raltegravir-absorption.R)           | 1 min    |
| [Raltegravir-Mass-Balance](./Reports/Raltegravir-Mass-Balance)                                                                                      | [Raltegravir-Mass-Balance](./tests/Reports/Raltegravir-Mass-Balance/Report.md)                                                   | [report-raltegravir-mass-<br>balance.R](./R/report-raltegravir-mass-balance.R)   | 1.1 min  |
| [Test-NO7](./Reports/Test-NO7)                                                                                                                      | [Test-NO7](./tests/Reports/Test-NO7/Report.md)                                                                                   | [report-NO7.R](./R/report-NO7.R)                                                 | 0.3 min  |
| [Test-NO8](./Reports/Test-NO8)                                                                                                                      | [Test-NO8](./tests/Reports/Test-NO8/Report.md)                                                                                   | [report-NO8.R](./R/report-NO8.R)                                                 | 0.6 min  |
| [Test-NO9](./Reports/Test-NO9)                                                                                                                      | [Test-NO9](./tests/Reports/Test-NO9/Report.md)                                                                                   | [report-NO9.R](./R/report-NO9.R)                                                 | 1 min    |
| [Test-NO10](./Reports/Test-NO10)                                                                                                                    | [Test-NO10](./tests/Reports/Test-NO10/Report.md)                                                                                 | [report-NO10.R](./R/report-NO10.R)                                               | 5 min    |
| [Test-NO11](./Reports/Test-NO11)                                                                                                                    | [Test-NO11](./tests/Reports/Test-NO11/Report.md)                                                                                 | [report-NO11.R](./R/report-NO11.R)                                               | 0.3 min  |
| [Test-NO12](./Reports/Test-NO12)                                                                                                                    | [Test-NO12](./tests/Reports/Test-NO12/Report.md)                                                                                 | [report-NO12.R](./R/report-NO12.R)                                               | 0.6 min  |
| [Qualification-CKD](https://github.com/Open-Systems-Pharmacology/Qualification-CKD)                                                                 | [Qualification-CKD](./tests/Reports/Qualification-CKD/Report.md)                                                                 | [report-qualification-ckd.R](./R/report-qualification-ckd.R)                     | 6.1 min  |
| [Qualification-HI](https://github.com/Open-Systems-Pharmacology/Qualification-HI)                                                                   | [Qualification-HI](./tests/Reports/Qualification-HI/Report.md)                                                                   | [report-qualification-hi.R](./R/report-qualification-hi.R)                       | 5.8 min  |
| [Pediatric-Qualification-<br>Package-UGT1A1-Ontogeny](https://github.com/Open-Systems-Pharmacology/Pediatric_Qualification_Package_UGT1A1_Ontogeny) | [Pediatric-Qualification-<br>Package-UGT1A1-Ontogeny](./tests/Reports/Pediatric_Qualification_Package_UGT1A1_Ontogeny/Report.md) | [report-qualification-ugt.R](./R/report-qualification-ugt.R)                     | 1.6 min  |
| [Digoxin-Model](https://github.com/Open-Systems-Pharmacology/Digoxin-Model)                                                                         | [Digoxin-Model](./tests/Reports/Digoxin-Model/Report.md)                                                                         | [report-qualification-digoxin.R](./R/report-qualification-digoxin.R)             | 11.5 min |
| [Propofol-Model](https://github.com/Open-Systems-Pharmacology/Propofol-Model)                                                                       | [Propofol-Model](./tests/Reports/Propofol-Model/Report.md)                                                                       | [report-qualification-propofol.R](./R/report-qualification-propofol.R)           | 1.9 min  |
| [dAb2-Model](https://github.com/Open-Systems-Pharmacology/dAb2-Model)                                                                               | [dAb2-Model](./tests/Reports/dAb2-Model/Report.md)                                                                               | [report-qualification-dab2.R](./R/report-qualification-dab2.R)                   | 0.9 min  |
| [MEDI524YTE-Model](https://github.com/Open-Systems-Pharmacology/MEDI524YTE-Model)                                                                   | [MEDI524YTE-Model](./tests/Reports/MEDI524YTE-Model/Report.md)                                                                   | [report-qualification-<br>medi524yte.R](./R/report-qualification-medi524yte.R)   | 0.7 min  |
| [MEDI524-Model](https://github.com/Open-Systems-Pharmacology/MEDI524-Model)                                                                         | [MEDI524-Model](./tests/Reports/MEDI524-Model/Report.md)                                                                         | [report-qualification-medi524.R](./R/report-qualification-medi524.R)             | 0.4 min  |
| [7E3-Model](https://github.com/Open-Systems-Pharmacology/7E3-Model)                                                                                 | [7E3-Model](./tests/Reports/7E3-Model/Report.md)                                                                                 | [report-qualification-7e3.R](./R/report-qualification-7e3.R)                     | 2.3 min  |
| [CDA1-Model](https://github.com/Open-Systems-Pharmacology/CDA1-Model)                                                                               | [CDA1-Model](./tests/Reports/CDA1-Model/Report.md)                                                                               | [report-qualification-cda1.R](./R/report-qualification-cda1.R)                   | 1.8 min  |
| [Inulin-Model](https://github.com/Open-Systems-Pharmacology/Inulin-Model)                                                                           | [Inulin-Model](./tests/Reports/Inulin-Model/Report.md)                                                                           | [report-qualification-inulin.R](./R/report-qualification-inulin.R)               | 0.8 min  |
| [BAY794620-Model](https://github.com/Open-Systems-Pharmacology/BAY794620-Model)                                                                     | [BAY794620-Model](./tests/Reports/BAY794620-Model/Report.md)                                                                     | [report-qualification-bay794620.R](./R/report-qualification-bay794620.R)         | 2.5 min  |
| [Tefibazumab-Model](https://github.com/Open-Systems-Pharmacology/Tefibazumab-Model)                                                                 | [Tefibazumab-Model](./tests/Reports/Tefibazumab-Model/Report.md)                                                                 | [report-qualification-<br>tefibazumab.R](./R/report-qualification-tefibazumab.R) | 2.5 min  |
| [TestInput01-DDI](https://github.com/Open-Systems-Pharmacology/TestInput01_DDI)                                                                     | [TestInput01-DDI](./tests/Reports/TestInput01_DDI/Report.md)                                                                     | [report-qualification-ddi.R](./R/report-qualification-ddi.R)                     | 3.9 min  |

## Detailed Test Results

| 📓 Report                                                                                                              | 🔎 Test                            | 🚦 Status                                                          | ✅ Success | ⚠ Warning &<br>❌ Failed |
|:-----------------------------------------------------------------------------------------------------------------------|:-----------------------------------|:-------------------------------------------------------------------|-----------:|-------------------------:|
| [Aciclovir-Mean](./tests/Reports/Aciclovir-Mean)                                                                       | Expected Files                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Aciclovir-Mean](./tests/Reports/Aciclovir-Mean)                                                                       | Content of<br>Report               | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Aciclovir-Mean](./tests/Reports/Aciclovir-Mean)                                                                       | Expected Plots                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          6 |                        0 |
| [Aciclovir-Mean](./tests/Reports/Aciclovir-Mean)                                                                       | Expected<br>Simulation<br>Results  | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Aciclovir-Mean](./tests/Reports/Aciclovir-Mean)                                                                       | Expected<br>PK Analysis<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Aciclovir-Mean](./tests/Reports/Aciclovir-Mean)                                                                       | Expected<br>Sensitivity<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Aciclovir-Mean](./tests/Reports/Aciclovir-Mean)                                                                       | Expected<br>Goodness of Fit        | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Aciclovir-Mean](./tests/Reports/Aciclovir-Mean)                                                                       | Expected PK<br>Parameter<br>Tables | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Aciclovir-Mean-SVG](./tests/Reports/Aciclovir-Mean-SVG)                                                               | Expected Files                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Aciclovir-Mean-SVG](./tests/Reports/Aciclovir-Mean-SVG)                                                               | Content of<br>Report               | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Aciclovir-Mean-SVG](./tests/Reports/Aciclovir-Mean-SVG)                                                               | Expected Plots                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          6 |                        0 |
| [Aciclovir-Mean-SVG](./tests/Reports/Aciclovir-Mean-SVG)                                                               | Expected<br>Simulation<br>Results  | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Aciclovir-Mean-SVG](./tests/Reports/Aciclovir-Mean-SVG)                                                               | Expected<br>PK Analysis<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Aciclovir-Mean-SVG](./tests/Reports/Aciclovir-Mean-SVG)                                                               | Expected<br>Sensitivity<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Aciclovir-Mean-SVG](./tests/Reports/Aciclovir-Mean-SVG)                                                               | Expected<br>Goodness of Fit        | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Aciclovir-Mean-SVG](./tests/Reports/Aciclovir-Mean-SVG)                                                               | Expected PK<br>Parameter<br>Tables | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Aciclovir-Population](./tests/Reports/Aciclovir-Population)                                                           | Expected Files                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Aciclovir-Population](./tests/Reports/Aciclovir-Population)                                                           | Content of<br>Report               | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Aciclovir-Population](./tests/Reports/Aciclovir-Population)                                                           | Expected Plots                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |         24 |                        0 |
| [Aciclovir-Population](./tests/Reports/Aciclovir-Population)                                                           | Expected<br>Simulation<br>Results  | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          2 |                        0 |
| [Aciclovir-Population](./tests/Reports/Aciclovir-Population)                                                           | Expected<br>PK Analysis<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          2 |                        0 |
| [Aciclovir-Population](./tests/Reports/Aciclovir-Population)                                                           | Expected<br>Sensitivity<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |         19 |                        0 |
| [Aciclovir-Population](./tests/Reports/Aciclovir-Population)                                                           | Expected<br>Goodness of Fit        | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          2 |                        0 |
| [Aciclovir-Population](./tests/Reports/Aciclovir-Population)                                                           | Expected PK<br>Parameter<br>Tables | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          8 |                        0 |
| [Raltegravir-Absorption](./tests/Reports/Raltegravir-Absorption)                                                       | Expected Files                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Raltegravir-Absorption](./tests/Reports/Raltegravir-Absorption)                                                       | Content of<br>Report               | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Raltegravir-Absorption](./tests/Reports/Raltegravir-Absorption)                                                       | Expected Plots                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          2 |                        0 |
| [Raltegravir-Absorption](./tests/Reports/Raltegravir-Absorption)                                                       | Expected<br>Absorption<br>Results  | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          2 |                        0 |
| [Raltegravir-Mass-Balance](./tests/Reports/Raltegravir-Mass-Balance)                                                   | Expected Files                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Raltegravir-Mass-Balance](./tests/Reports/Raltegravir-Mass-Balance)                                                   | Content of<br>Report               | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Raltegravir-Mass-Balance](./tests/Reports/Raltegravir-Mass-Balance)                                                   | Expected Plots                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |         10 |                        0 |
| [Raltegravir-Mass-Balance](./tests/Reports/Raltegravir-Mass-Balance)                                                   | Expected Mass<br>Balance Results   | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          2 |                        0 |
| [Test-NO7](./tests/Reports/Test-NO7)                                                                                   | Expected Files                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO7](./tests/Reports/Test-NO7)                                                                                   | Content of<br>Report               | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO7](./tests/Reports/Test-NO7)                                                                                   | Expected Plots                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          8 |                        0 |
| [Test-NO7](./tests/Reports/Test-NO7)                                                                                   | Expected<br>Simulation<br>Results  | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO7](./tests/Reports/Test-NO7)                                                                                   | Expected<br>PK Analysis<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO7](./tests/Reports/Test-NO7)                                                                                   | Expected<br>Goodness of Fit        | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          2 |                        0 |
| [Test-NO7](./tests/Reports/Test-NO7)                                                                                   | Expected PK<br>Parameter<br>Tables | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO8](./tests/Reports/Test-NO8)                                                                                   | Expected Files                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO8](./tests/Reports/Test-NO8)                                                                                   | Content of<br>Report               | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO8](./tests/Reports/Test-NO8)                                                                                   | Expected Plots                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |         33 |                        0 |
| [Test-NO8](./tests/Reports/Test-NO8)                                                                                   | Expected<br>Simulation<br>Results  | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO8](./tests/Reports/Test-NO8)                                                                                   | Expected<br>PK Analysis<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO8](./tests/Reports/Test-NO8)                                                                                   | Expected<br>Goodness of Fit        | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO8](./tests/Reports/Test-NO8)                                                                                   | Expected PK<br>Parameter<br>Tables | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |         12 |                        0 |
| [Test-NO9](./tests/Reports/Test-NO9)                                                                                   | Expected Files                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO9](./tests/Reports/Test-NO9)                                                                                   | Content of<br>Report               | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO9](./tests/Reports/Test-NO9)                                                                                   | Expected Plots                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |         20 |                        0 |
| [Test-NO9](./tests/Reports/Test-NO9)                                                                                   | Expected<br>Simulation<br>Results  | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          4 |                        0 |
| [Test-NO9](./tests/Reports/Test-NO9)                                                                                   | Expected<br>PK Analysis<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          4 |                        0 |
| [Test-NO9](./tests/Reports/Test-NO9)                                                                                   | Expected<br>Goodness of Fit        | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          4 |                        0 |
| [Test-NO9](./tests/Reports/Test-NO9)                                                                                   | Expected PK<br>Parameter<br>Tables | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          6 |                        0 |
| [Test-NO10](./tests/Reports/Test-NO10)                                                                                 | Expected Files                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO10](./tests/Reports/Test-NO10)                                                                                 | Content of<br>Report               | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO10](./tests/Reports/Test-NO10)                                                                                 | Expected Plots                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |        368 |                        0 |
| [Test-NO10](./tests/Reports/Test-NO10)                                                                                 | Expected<br>Simulation<br>Results  | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          4 |                        0 |
| [Test-NO10](./tests/Reports/Test-NO10)                                                                                 | Expected<br>PK Analysis<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          4 |                        0 |
| [Test-NO10](./tests/Reports/Test-NO10)                                                                                 | Expected<br>Goodness of Fit        | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          4 |                        0 |
| [Test-NO10](./tests/Reports/Test-NO10)                                                                                 | Expected PK<br>Parameter<br>Tables | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |         12 |                        0 |
| [Test-NO11](./tests/Reports/Test-NO11)                                                                                 | Expected Files                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO11](./tests/Reports/Test-NO11)                                                                                 | Content of<br>Report               | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO11](./tests/Reports/Test-NO11)                                                                                 | Expected Plots                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          8 |                        0 |
| [Test-NO11](./tests/Reports/Test-NO11)                                                                                 | Expected<br>Simulation<br>Results  | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO11](./tests/Reports/Test-NO11)                                                                                 | Expected<br>PK Analysis<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO11](./tests/Reports/Test-NO11)                                                                                 | Expected<br>Goodness of Fit        | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          2 |                        0 |
| [Test-NO11](./tests/Reports/Test-NO11)                                                                                 | Expected PK<br>Parameter<br>Tables | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO12](./tests/Reports/Test-NO12)                                                                                 | Expected Files                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO12](./tests/Reports/Test-NO12)                                                                                 | Content of<br>Report               | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO12](./tests/Reports/Test-NO12)                                                                                 | Expected Plots                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |         14 |                        0 |
| [Test-NO12](./tests/Reports/Test-NO12)                                                                                 | Expected<br>Simulation<br>Results  | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO12](./tests/Reports/Test-NO12)                                                                                 | Expected<br>PK Analysis<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO12](./tests/Reports/Test-NO12)                                                                                 | Expected<br>Goodness of Fit        | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          2 |                        0 |
| [Test-NO12](./tests/Reports/Test-NO12)                                                                                 | Expected PK<br>Parameter<br>Tables | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO12](./tests/Reports/Test-NO12)                                                                                 | Expected Mass<br>Balance Results   | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Test-NO12](./tests/Reports/Test-NO12)                                                                                 | Expected<br>Absorption<br>Results  | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Qualification-CKD](./tests/Reports/Qualification-CKD)                                                                 | Report has run                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Qualification-HI](./tests/Reports/Qualification-HI)                                                                   | Report has run                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Pediatric-Qualification-<br>Package-UGT1A1-Ontogeny](./tests/Reports/Pediatric_Qualification_Package_UGT1A1_Ontogeny) | Report has run                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Digoxin-Model](./tests/Reports/Digoxin-Model)                                                                         | Report has run                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Propofol-Model](./tests/Reports/Propofol-Model)                                                                       | Report has run                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [dAb2-Model](./tests/Reports/dAb2-Model)                                                                               | Report has run                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [MEDI524YTE-Model](./tests/Reports/MEDI524YTE-Model)                                                                   | Report has run                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [MEDI524-Model](./tests/Reports/MEDI524-Model)                                                                         | Report has run                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [7E3-Model](./tests/Reports/7E3-Model)                                                                                 | Report has run                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [CDA1-Model](./tests/Reports/CDA1-Model)                                                                               | Report has run                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Inulin-Model](./tests/Reports/Inulin-Model)                                                                           | Report has run                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [BAY794620-Model](./tests/Reports/BAY794620-Model)                                                                     | Report has run                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [Tefibazumab-Model](./tests/Reports/Tefibazumab-Model)                                                                 | Report has run                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
| [TestInput01-DDI](./tests/Reports/TestInput01_DDI)                                                                     | Report has run                     | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) |          1 |                        0 |
