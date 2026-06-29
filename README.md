Reporting Engine Test Reports
================
Open System Pharmacology
2026-06-29

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
| 26               | 661           | 494            | 25.3 %                 |

## Test Infrastructure

<details>

<summary>

Click to expand
</summary>

    ## R version 4.6.1 (2026-06-24 ucrt)
    ## Platform: x86_64-w64-mingw32/x64
    ## Running under: Windows Server 2022 x64 (build 26100)
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
    ## [1] RE-Test-Reports_0.0.0.9000          ospsuite.reportingengine_2.4.0.9007
    ## [3] ospsuite_12.4.3.9011                tlf_1.6.2.9001                     
    ## [5] testthat_3.3.2                      dplyr_1.2.1                        
    ## 
    ## loaded via a namespace (and not attached):
    ##  [1] gtable_0.3.6                          
    ##  [2] xfun_0.59                             
    ##  [3] ggplot2_4.0.3                         
    ##  [4] remotes_2.5.0                         
    ##  [5] processx_3.9.0                        
    ##  [6] callr_3.8.0                           
    ##  [7] tzdb_0.5.0                            
    ##  [8] vctrs_0.7.3                           
    ##  [9] tools_4.6.1                           
    ## [10] generics_0.1.4                        
    ## [11] curl_7.1.0                            
    ## [12] parallel_4.6.1                        
    ## [13] tibble_3.3.1                          
    ## [14] pkgconfig_2.0.3                       
    ## [15] data.table_1.18.4                     
    ## [16] RColorBrewer_1.1-3                    
    ## [17] S7_0.2.2                              
    ## [18] desc_1.4.3                            
    ## [19] readxl_1.5.0                          
    ## [20] lifecycle_1.0.5                       
    ## [21] compiler_4.6.1                        
    ## [22] farver_2.1.2                          
    ## [23] stringr_1.6.0                         
    ## [24] textshaping_1.0.5                     
    ## [25] brio_1.1.5                            
    ## [26] litedown_0.9                          
    ## [27] htmltools_0.5.9                       
    ## [28] yaml_2.3.12                           
    ## [29] pillar_1.11.1                         
    ## [30] crayon_1.5.3                          
    ## [31] tidyr_1.3.2                           
    ## [32] rSharp_1.2.1.9001                     
    ## [33] commonmark_2.0.0                      
    ## [34] zip_3.0.0                             
    ## [35] tidyselect_1.2.1                      
    ## [36] digest_0.6.39                         
    ## [37] stringi_1.8.7                         
    ## [38] diffobj_0.3.6                         
    ## [39] purrr_1.2.2                           
    ## [40] showtextdb_3.0                        
    ## [41] rsvg_2.7.0                            
    ## [42] labeling_0.4.3                        
    ## [43] cowplot_1.2.0                         
    ## [44] rprojroot_2.1.1                       
    ## [45] fastmap_1.2.0                         
    ## [46] grid_4.6.1                            
    ## [47] cli_3.6.6                             
    ## [48] logger_0.4.2                          
    ## [49] magrittr_2.0.5                        
    ## [50] pkgbuild_1.4.8                        
    ## [51] readr_2.2.0                           
    ## [52] withr_3.0.3                           
    ## [53] waldo_0.6.2                           
    ## [54] ospsuite.utils_1.11.1                 
    ## [55] scales_1.4.0                          
    ## [56] showtext_0.9-8                        
    ## [57] bit64_4.8.2                           
    ## [58] rmarkdown_2.31                        
    ## [59] sysfonts_0.8.9                        
    ## [60] bit_4.6.0                             
    ## [61] otel_0.2.0                            
    ## [62] ggtext_0.1.2                          
    ## [63] cellranger_1.1.0                      
    ## [64] png_0.1-9                             
    ## [65] ragg_1.5.2                            
    ## [66] hms_1.1.4                             
    ## [67] openxlsx_4.2.8.1                      
    ## [68] evaluate_1.0.5                        
    ## [69] ospsuite.qualificationplaneditor_0.1.0
    ## [70] knitr_1.51                            
    ## [71] viridisLite_0.4.3                     
    ## [72] markdown_2.0                          
    ## [73] rlang_1.2.0                           
    ## [74] gridtext_0.1.6                        
    ## [75] Rcpp_1.1.1-1.1                        
    ## [76] glue_1.8.1                            
    ## [77] xml2_1.6.0                            
    ## [78] pkgload_1.5.3                         
    ## [79] svglite_2.2.2                         
    ## [80] vroom_1.7.1                           
    ## [81] jsonlite_2.0.0                        
    ## [82] R6_2.6.1                              
    ## [83] systemfonts_1.3.2

</details>

## Using Reports and Scripts as template

Users can find the reports and their description in the
[/Reports](./Reports) folder as well as the corresponding R code in the
[/R](./R) folder.

Models, Observed and Simulated Data are respectively available in the
[Models](./Models) and [Data](./Data) folders.

Here is the summary of the reports, their scripts and their run time
currently available in this repository:

| Reference | Test Report | Script | Run Time |
|:---|:---|:---|:---|
| [Aciclovir-Mean](./Reports/Aciclovir-Mean) | [Aciclovir-Mean](./tests/Reports/Aciclovir-Mean/Report.md) | [report-aciclovir-mean.R](./R/report-aciclovir-mean.R) | 0.6 min |
| [Aciclovir-Mean-SVG](./Reports/Aciclovir-Mean-SVG) | [Aciclovir-Mean-SVG](./tests/Reports/Aciclovir-Mean-SVG/Report.md) | [report-aciclovir-mean-svg.R](./R/report-aciclovir-mean-svg.R) | 0.7 min |
| [Aciclovir-Population](./Reports/Aciclovir-Population) | [Aciclovir-Population](./tests/Reports/Aciclovir-Population/Report.md) | [report-aciclovir-population.R](./R/report-aciclovir-population.R) | 7.9 min |
| [Raltegravir-Absorption](./Reports/Raltegravir-Absorption) | [Raltegravir-Absorption](./tests/Reports/Raltegravir-Absorption/Report.md) | [report-raltegravir-absorption.R](./R/report-raltegravir-absorption.R) | 0.9 min |
| [Raltegravir-Mass-Balance](./Reports/Raltegravir-Mass-Balance) | [Raltegravir-Mass-Balance](./tests/Reports/Raltegravir-Mass-Balance/Report.md) | [report-raltegravir-mass-<br>balance.R](./R/report-raltegravir-mass-balance.R) | 1.3 min |
| [Test-NO7](./Reports/Test-NO7) | [Test-NO7](./tests/Reports/Test-NO7/Report.md) | [report-NO7.R](./R/report-NO7.R) | 0.3 min |
| [Test-NO8](./Reports/Test-NO8) | [Test-NO8](./tests/Reports/Test-NO8/Report.md) | [report-NO8.R](./R/report-NO8.R) | 0.7 min |
| [Test-NO9](./Reports/Test-NO9) | [Test-NO9](./tests/Reports/Test-NO9/Report.md) | [report-NO9.R](./R/report-NO9.R) | 1 min |
| [Test-NO10](./Reports/Test-NO10) | [Test-NO10](./tests/Reports/Test-NO10/Report.md) | [report-NO10.R](./R/report-NO10.R) | 6.1 min |
| [Test-NO11](./Reports/Test-NO11) | [Test-NO11](./tests/Reports/Test-NO11/Report.md) | [report-NO11.R](./R/report-NO11.R) | 0.3 min |
| [Test-NO12](./Reports/Test-NO12) | [Test-NO12](./tests/Reports/Test-NO12/Report.md) | [report-NO12.R](./R/report-NO12.R) | 0.7 min |
| [Qualification-CKD](https://github.com/Open-Systems-Pharmacology/Qualification-CKD) | [Qualification-CKD](./tests/Reports/Qualification-CKD/Report.md) | [report-qualification-ckd.R](./R/report-qualification-ckd.R) | 6.1 min |
| [Qualification-HI](https://github.com/Open-Systems-Pharmacology/Qualification-HI) | [Qualification-HI](./tests/Reports/Qualification-HI/Report.md) | [report-qualification-hi.R](./R/report-qualification-hi.R) | 6.3 min |
| [Pediatric-Qualification-<br>Package-UGT1A1-Ontogeny](https://github.com/Open-Systems-Pharmacology/Pediatric_Qualification_Package_UGT1A1_Ontogeny) | [Pediatric-Qualification-<br>Package-UGT1A1-Ontogeny](./tests/Reports/Pediatric_Qualification_Package_UGT1A1_Ontogeny/Report.md) | [report-qualification-ugt.R](./R/report-qualification-ugt.R) | 1.7 min |
| [Digoxin-Model](https://github.com/Open-Systems-Pharmacology/Digoxin-Model) | [Digoxin-Model](./tests/Reports/Digoxin-Model/Report.md) | [report-qualification-digoxin.R](./R/report-qualification-digoxin.R) | 11.2 min |
| [Propofol-Model](https://github.com/Open-Systems-Pharmacology/Propofol-Model) | [Propofol-Model](./tests/Reports/Propofol-Model/Report.md) | [report-qualification-propofol.R](./R/report-qualification-propofol.R) | 2.1 min |
| [dAb2-Model](https://github.com/Open-Systems-Pharmacology/dAb2-Model) | [dAb2-Model](./tests/Reports/dAb2-Model/Report.md) | [report-qualification-dab2.R](./R/report-qualification-dab2.R) | 0.9 min |
| [MEDI524YTE-Model](https://github.com/Open-Systems-Pharmacology/MEDI524YTE-Model) | [MEDI524YTE-Model](./tests/Reports/MEDI524YTE-Model/Report.md) | [report-qualification-<br>medi524yte.R](./R/report-qualification-medi524yte.R) | 0.6 min |
| [MEDI524-Model](https://github.com/Open-Systems-Pharmacology/MEDI524-Model) | [MEDI524-Model](./tests/Reports/MEDI524-Model/Report.md) | [report-qualification-medi524.R](./R/report-qualification-medi524.R) | 0.4 min |
| [7E3-Model](https://github.com/Open-Systems-Pharmacology/7E3-Model) | [7E3-Model](./tests/Reports/7E3-Model/Report.md) | [report-qualification-7e3.R](./R/report-qualification-7e3.R) | 2.6 min |
| [CDA1-Model](https://github.com/Open-Systems-Pharmacology/CDA1-Model) | [CDA1-Model](./tests/Reports/CDA1-Model/Report.md) | [report-qualification-cda1.R](./R/report-qualification-cda1.R) | 1.8 min |
| [Inulin-Model](https://github.com/Open-Systems-Pharmacology/Inulin-Model) | [Inulin-Model](./tests/Reports/Inulin-Model/Report.md) | [report-qualification-inulin.R](./R/report-qualification-inulin.R) | 0.8 min |
| [BAY794620-Model](https://github.com/Open-Systems-Pharmacology/BAY794620-Model) | [BAY794620-Model](./tests/Reports/BAY794620-Model/Report.md) | [report-qualification-bay794620.R](./R/report-qualification-bay794620.R) | 2.9 min |
| [Tefibazumab-Model](https://github.com/Open-Systems-Pharmacology/Tefibazumab-Model) | [Tefibazumab-Model](./tests/Reports/Tefibazumab-Model/Report.md) | [report-qualification-<br>tefibazumab.R](./R/report-qualification-tefibazumab.R) | 2.4 min |
| [TestInput01-DDI](https://github.com/Open-Systems-Pharmacology/TestInput01_DDI) | [TestInput01-DDI](./tests/Reports/TestInput01_DDI/Report.md) | [report-qualification-ddi.R](./R/report-qualification-ddi.R) | 3.7 min |

## Detailed Test Results

| 📓 Report | 🔎 Test | 🚦 Status | ✅ Success | ⚠ Warning &<br>❌ Failed |
|:---|:---|:---|---:|---:|
| [Qualification Plan Editor](./tests/Reports/Qualification%20Plan%20Editor) | Report has run<br>after update | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Qualification Plan Editor](./tests/Reports/Qualification%20Plan%20Editor) | Qualification<br>Plan Editor<br>generated same<br>report after<br>update | ![](https://img.shields.io/badge/%E2%9A%A0-Failed%20tests-red) | 0 | 1 |
| [Qualification Plan Editor](./tests/Reports/Qualification%20Plan%20Editor) | Qualification<br>Plan Editor<br>generated same<br>figures after<br>update | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 3 | 0 |
| [Aciclovir-Mean](./tests/Reports/Aciclovir-Mean) | Expected Files | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Aciclovir-Mean](./tests/Reports/Aciclovir-Mean) | Content of<br>Report | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Aciclovir-Mean](./tests/Reports/Aciclovir-Mean) | Expected Plots | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 6 | 0 |
| [Aciclovir-Mean](./tests/Reports/Aciclovir-Mean) | Expected<br>Simulation<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Aciclovir-Mean](./tests/Reports/Aciclovir-Mean) | Expected<br>PK Analysis<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Aciclovir-Mean](./tests/Reports/Aciclovir-Mean) | Expected<br>Sensitivity<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Aciclovir-Mean](./tests/Reports/Aciclovir-Mean) | Expected<br>Goodness of Fit | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Aciclovir-Mean](./tests/Reports/Aciclovir-Mean) | Expected PK<br>Parameter<br>Tables | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Aciclovir-Mean-SVG](./tests/Reports/Aciclovir-Mean-SVG) | Expected Files | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Aciclovir-Mean-SVG](./tests/Reports/Aciclovir-Mean-SVG) | Content of<br>Report | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Aciclovir-Mean-SVG](./tests/Reports/Aciclovir-Mean-SVG) | Expected Plots | ![](https://img.shields.io/badge/%E2%9A%A0-Failed%20tests-red) | 0 | 6 |
| [Aciclovir-Mean-SVG](./tests/Reports/Aciclovir-Mean-SVG) | Expected<br>Simulation<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Aciclovir-Mean-SVG](./tests/Reports/Aciclovir-Mean-SVG) | Expected<br>PK Analysis<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Aciclovir-Mean-SVG](./tests/Reports/Aciclovir-Mean-SVG) | Expected<br>Sensitivity<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Aciclovir-Mean-SVG](./tests/Reports/Aciclovir-Mean-SVG) | Expected<br>Goodness of Fit | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Aciclovir-Mean-SVG](./tests/Reports/Aciclovir-Mean-SVG) | Expected PK<br>Parameter<br>Tables | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Aciclovir-Population](./tests/Reports/Aciclovir-Population) | Expected Files | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Aciclovir-Population](./tests/Reports/Aciclovir-Population) | Content of<br>Report | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Aciclovir-Population](./tests/Reports/Aciclovir-Population) | Expected Plots | ![](https://img.shields.io/badge/%E2%9A%A0-Failed%20tests-red) | 0 | 24 |
| [Aciclovir-Population](./tests/Reports/Aciclovir-Population) | Expected<br>Simulation<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 2 | 0 |
| [Aciclovir-Population](./tests/Reports/Aciclovir-Population) | Expected<br>PK Analysis<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 2 | 0 |
| [Aciclovir-Population](./tests/Reports/Aciclovir-Population) | Expected<br>Sensitivity<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 19 | 0 |
| [Aciclovir-Population](./tests/Reports/Aciclovir-Population) | Expected<br>Goodness of Fit | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 2 | 0 |
| [Aciclovir-Population](./tests/Reports/Aciclovir-Population) | Expected PK<br>Parameter<br>Tables | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 8 | 0 |
| [Raltegravir-Absorption](./tests/Reports/Raltegravir-Absorption) | Expected Files | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Raltegravir-Absorption](./tests/Reports/Raltegravir-Absorption) | Content of<br>Report | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Raltegravir-Absorption](./tests/Reports/Raltegravir-Absorption) | Expected Plots | ![](https://img.shields.io/badge/%E2%9A%A0-Failed%20tests-red) | 0 | 2 |
| [Raltegravir-Absorption](./tests/Reports/Raltegravir-Absorption) | Expected<br>Absorption<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 2 | 0 |
| [Raltegravir-Mass-Balance](./tests/Reports/Raltegravir-Mass-Balance) | Expected Files | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Raltegravir-Mass-Balance](./tests/Reports/Raltegravir-Mass-Balance) | Content of<br>Report | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Raltegravir-Mass-Balance](./tests/Reports/Raltegravir-Mass-Balance) | Expected Plots | ![](https://img.shields.io/badge/%E2%9A%A0-Failed%20tests-red) | 0 | 10 |
| [Raltegravir-Mass-Balance](./tests/Reports/Raltegravir-Mass-Balance) | Expected Mass<br>Balance Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 2 | 0 |
| [Test-NO7](./tests/Reports/Test-NO7) | Expected Files | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO7](./tests/Reports/Test-NO7) | Content of<br>Report | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO7](./tests/Reports/Test-NO7) | Expected Plots | ![](https://img.shields.io/badge/%E2%9A%A0-Failed%20tests-red) | 0 | 8 |
| [Test-NO7](./tests/Reports/Test-NO7) | Expected<br>Simulation<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO7](./tests/Reports/Test-NO7) | Expected<br>PK Analysis<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO7](./tests/Reports/Test-NO7) | Expected<br>Goodness of Fit | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 2 | 0 |
| [Test-NO7](./tests/Reports/Test-NO7) | Expected PK<br>Parameter<br>Tables | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO8](./tests/Reports/Test-NO8) | Expected Files | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO8](./tests/Reports/Test-NO8) | Content of<br>Report | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO8](./tests/Reports/Test-NO8) | Expected Plots | ![](https://img.shields.io/badge/%E2%9A%A0-Failed%20tests-red) | 0 | 33 |
| [Test-NO8](./tests/Reports/Test-NO8) | Expected<br>Simulation<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO8](./tests/Reports/Test-NO8) | Expected<br>PK Analysis<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO8](./tests/Reports/Test-NO8) | Expected<br>Goodness of Fit | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO8](./tests/Reports/Test-NO8) | Expected PK<br>Parameter<br>Tables | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 12 | 0 |
| [Test-NO9](./tests/Reports/Test-NO9) | Expected Files | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO9](./tests/Reports/Test-NO9) | Content of<br>Report | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO9](./tests/Reports/Test-NO9) | Expected Plots | ![](https://img.shields.io/badge/%E2%9A%A0-Failed%20tests-red) | 0 | 20 |
| [Test-NO9](./tests/Reports/Test-NO9) | Expected<br>Simulation<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 4 | 0 |
| [Test-NO9](./tests/Reports/Test-NO9) | Expected<br>PK Analysis<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 4 | 0 |
| [Test-NO9](./tests/Reports/Test-NO9) | Expected<br>Goodness of Fit | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 4 | 0 |
| [Test-NO9](./tests/Reports/Test-NO9) | Expected PK<br>Parameter<br>Tables | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 6 | 0 |
| [Test-NO10](./tests/Reports/Test-NO10) | Expected Files | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO10](./tests/Reports/Test-NO10) | Content of<br>Report | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO10](./tests/Reports/Test-NO10) | Expected Plots | ![](https://img.shields.io/badge/%E2%9A%A0-Failed%20tests-red) | 0 | 368 |
| [Test-NO10](./tests/Reports/Test-NO10) | Expected<br>Simulation<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 4 | 0 |
| [Test-NO10](./tests/Reports/Test-NO10) | Expected<br>PK Analysis<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 4 | 0 |
| [Test-NO10](./tests/Reports/Test-NO10) | Expected<br>Goodness of Fit | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 4 | 0 |
| [Test-NO10](./tests/Reports/Test-NO10) | Expected PK<br>Parameter<br>Tables | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 12 | 0 |
| [Test-NO11](./tests/Reports/Test-NO11) | Expected Files | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO11](./tests/Reports/Test-NO11) | Content of<br>Report | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO11](./tests/Reports/Test-NO11) | Expected Plots | ![](https://img.shields.io/badge/%E2%9A%A0-Failed%20tests-red) | 0 | 8 |
| [Test-NO11](./tests/Reports/Test-NO11) | Expected<br>Simulation<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO11](./tests/Reports/Test-NO11) | Expected<br>PK Analysis<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO11](./tests/Reports/Test-NO11) | Expected<br>Goodness of Fit | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 2 | 0 |
| [Test-NO11](./tests/Reports/Test-NO11) | Expected PK<br>Parameter<br>Tables | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO12](./tests/Reports/Test-NO12) | Expected Files | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO12](./tests/Reports/Test-NO12) | Content of<br>Report | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO12](./tests/Reports/Test-NO12) | Expected Plots | ![](https://img.shields.io/badge/%E2%9A%A0-Failed%20tests-red) | 0 | 14 |
| [Test-NO12](./tests/Reports/Test-NO12) | Expected<br>Simulation<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO12](./tests/Reports/Test-NO12) | Expected<br>PK Analysis<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO12](./tests/Reports/Test-NO12) | Expected<br>Goodness of Fit | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 2 | 0 |
| [Test-NO12](./tests/Reports/Test-NO12) | Expected PK<br>Parameter<br>Tables | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO12](./tests/Reports/Test-NO12) | Expected Mass<br>Balance Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Test-NO12](./tests/Reports/Test-NO12) | Expected<br>Absorption<br>Results | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Qualification-CKD](./tests/Reports/Qualification-CKD) | Report has run | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Qualification-HI](./tests/Reports/Qualification-HI) | Report has run | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Pediatric-Qualification-<br>Package-UGT1A1-Ontogeny](./tests/Reports/Pediatric_Qualification_Package_UGT1A1_Ontogeny) | Report has run | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Digoxin-Model](./tests/Reports/Digoxin-Model) | Report has run | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Propofol-Model](./tests/Reports/Propofol-Model) | Report has run | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [dAb2-Model](./tests/Reports/dAb2-Model) | Report has run | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [MEDI524YTE-Model](./tests/Reports/MEDI524YTE-Model) | Report has run | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [MEDI524-Model](./tests/Reports/MEDI524-Model) | Report has run | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [7E3-Model](./tests/Reports/7E3-Model) | Report has run | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [CDA1-Model](./tests/Reports/CDA1-Model) | Report has run | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Inulin-Model](./tests/Reports/Inulin-Model) | Report has run | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [BAY794620-Model](./tests/Reports/BAY794620-Model) | Report has run | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [Tefibazumab-Model](./tests/Reports/Tefibazumab-Model) | Report has run | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
| [TestInput01-DDI](./tests/Reports/TestInput01_DDI) | Report has run | ![](https://img.shields.io/badge/%E2%9C%93-Passed%20tests-success) | 1 | 0 |
