A population of individuals based on normal healthy subjects in Blouin 1982 study was defined using the physiological database of PK-Sim.<sup>120,2</sup> **Table 1** presents the drug-specific parameters of vancomycin and the values used for the IV administration model. 

**Table 1. Physicochemical properties and ADME of vancomycin for IV model construction**

| **Physicochemical properties**    |                            |
|--|--|
| Octanol:water coefficient (logP)                | 2.45 Log Units<sup>114</sup>  |
| Fraction unbound in plasma (f<sub>u</sub>)      |  0.67<sup>114</sup> |
| Molecular weight (MW)                           |  1449 g/mol<sup>115</sup> |
| pKa                                             | 2.18, 7.75, 8.89<sup>114</sup> |
| Water solubility                                | 0.23 mg/mL<sup>115</sup> |
| **ADME**                                        |                            |
| Partition coefficient                           | PK-Sim Standard<sup>114</sup>  |
| Cell permeability                               | Charge-dependent Schmitt<sup>114</sup>  |
| Total clearance                                 | 1.06 mL/min/kg<sup>114</sup> |
| GFR fraction                                    | 1.0<sup>118</sup>  |


**Table 2** presents the vancomycin datasets used for building the IV model. Several logP and fraction unbound values were tested. Ultimately, the values used by Radke 2017<sup>114</sup>, best described the observed PK data.

**Table 2. Pharmacokinetic datasets for vancomycin IV model construction**

| **Study**       | **Dose and administration**     | **Cohort**           | **N** | **Age (years)**<sup>a</sup> | **Weight (kg)**<sup>a</sup> |
|-----------------|---------------------------------|----------------------|-------|--------------------|--------------------|
| Cutler 1984<sup>119</sup>  | 6 mg/kg IV infusion over 60 min | White American Males | 5     | 22.6 ± 3.1         | 77.4 ± 5.0         |
| Blouin 1982<sup>120</sup> | 1 g IV infusion over 40 min     | White American Males | 4     | 27 ± 2.4           | 74.6 ± 10.1        |

<sup>a</sup>Mean ± SD reported, or range in square brackets if SD not reported.

Simulations were conducted in two datasets with a dose of 500 mg IV infusion q6h and 1 g IV infusion q12h to evaluate the predictive accuracy of the model (**Table 3**). For each simulation, a representative mean individual was created and used in PK-Sim.

**Table 3. Pharmacokinetic datasets for vancomycin IV model evaluation**

| **Study**      | **Dose and administration**        | **Cohort**           | **N** | **Age (years)**<sup>a</sup> | **Weight (kg)**<sup>a</sup> |
|----------------|------------------------------------|----------------------|-------|--------------------|--------------------|
| Healy 1987<sup>121</sup> | 500 mg IV infusion over 60 min q6h | White American Males | 11    | 24.7 ± 2.1         | 66.5 ± 11.2        |
| Healy 1987<sup>121</sup> | 1 g IV infusion over 60 min q12h   | White American Males | 11    | 24.7 ± 2.1         | 66.5 ± 11.2        |


Figure 3.7.1 demonstrates the simulated intravenous model PK profiles in the population compared against the observed data from Blouin 1982.<sup>120</sup>