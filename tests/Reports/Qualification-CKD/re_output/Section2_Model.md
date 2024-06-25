In order to generate a virtual population of subjects with CKD, the user must specify a target range for glomerular filtration rate (GFR) (minimum to maximum). PK-Sim will first generate a healthy population using the standard algorithm<sup>2</sup> - including the effects of aging as appropriate - and modify the physiological parameters of the simulated individuals to replicate a realistic CKD phenotype. The details of this process are outlined in **Figure 2-2**, with references to **Figure 2-1**, **Table 2-1** and **Table 2-2**. For a complete description, see Malik et al.<sup>1</sup>

|![test image](images/fig1_paper.png)|
|:-:|
|       *Figure 2-1: Simulated kidney volumes (left) and simulated renal cortex perfusion rates (right) in a population of adults aged 30-70 years with varying degrees of renal impairment compared with observed data from the literature.<sup>3-8</sup> Diamonds represent individual data, whereas error bars represent the range in a study. In order to assign realistic physiological parameters to virtual individuals, quadratic equations for kidney volume and renal cortex perfusion rates were optimized to log-transformed data.*         |

|![test image](images/fig2_paper.png)|
|:-:|
|       *Figure 2-2: Algorithm for generation of virtual individuals with CKD while accounting for the effects of aging*         |

**Table 2-1. Hematocrit in Patients With Chronic Kidney Disease<sup>9, 10, 11</sup>**

| **Creatinine Clearance (mL/min/1.73 m<sup>2</sup>)**    | **Men HCT (%)**  | **Women HCT (%)** |
|---------------------------------------------------------|------------------|-------------------|
| Healthy                                                 | 45.5             | 40                |
| 60<CrCl≤70                                              | 45.2             | 39.9              |
| 50<CrCl≤60                                              | 44.8             | 39.6              |
| 40<CrCl≤50                                              | 43.3             | 39.7              |
| 30<CrCl≤40                                              | 42.6             | 38.4              |
| 20<CrCl≤30                                              | 41.7             | 37.4              |
| CrCl≤20                                                 | 34.3             | 33.5              |
| Hemodialysis                                            | 31               | 29                |


**Table 2-2. Fraction of Healthy Values (Normal Coefficient of Variation % ) in Chronic Kidney Disease Patients by Stage**

|Parameter                     |    Stage 3 (30-60 mL/min/1.73 m<sup>2</sup>)   |    Stage 4 (15-30 mL/min/1.73 m<sup>2</sup>)  |    Stage 5 (<15 mL/min/1.73 m<sup>2</sup>)   |   Dialysis   |
| :--------------------------- | :-------------------: | :---------------------: | :--------------------------: | :-------------------------: |
|Fraction unbound in plasma    |   1.07<sup>12</sup>   |    1.16<sup>12</sup>    |       1.55<sup>12</sup>      |      1.55<sup>12</sup>     |
|Gastric emptying time         |          1.0          |  1.6 (25%)<sup>14</sup> |   1.6 (25%)<sup>13,14</sup>  |  1.6 (30%)<sup>15-18</sup> |
|Small intestinal transit time |          1.0          |  1.4 (25%)<sup>14</sup> |    1.4 (25%)<sup>14</sup>    |   1.8 (30%)<sup>19</sup>   |
|Colonic transit time          |          1.0          |           1.0           |             1.0              |   1.8 (50%)<sup>20</sup>   |
