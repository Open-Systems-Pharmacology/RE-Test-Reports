A population of individuals based on Uematsu 1994 subjects was defined using the physiological database of PK-Sim.<sup>104,2</sup> **Table 1** and **Table 3** present the drug-specific parameters of sotalol and the values used for the IV and Oral administration models. Parameter optimization was carried out in PK-Sim using a Monte Carlo approach for exploring the parameter space, using the datasets summarized in **Table 2** and **Table 4**.

##### IV model 

**Table 1. Physicochemical properties and ADME of sotalol for IV model construction**

| **Physicochemical properties**    |                            |
|--|--|
| Octanol:water coefficient (logP)           | 0.5 Log Units |
| Fraction unbound in plasma (f<sub>u</sub>) | 1<sup>96</sup> |
| Molecular weight (MW)                      | 272.4 g/mol |
| pKa                                        | 9.60 |
| Water solubility                           | 5510 mg/L<sub>99</sub>   |
| **ADME**                                   |                            |
| Partition coefficient                      | PK-Sim Standard |
| Cell permeability                          | PK-Sim Standard |
| Total clearance                            | 150 mL/min<sup>93</sup> |
| OCT concentration                          | normally distributed with mean 1.0 µM and SD 0.20 µM <sup>110</sup> |
| OCT K<sub>m</sub>                          | 400 µM<sup>100</sup> |
| OCT V<sub>max</sub>                        | 0.07 µM/min |
| GFR fraction                               | 1.0<sup>93</sup> |


Sotalol undergoes renal transportation via MATE proteins (MATE1, MATE2/2-K) and OCT proteins (OCT2/SLC22A2). The OCT2 proteins draw sotalol through the basolateral side of the proximal tubule cells and the MATE proteins excrete the drug into the urine from the apical side of the proximal tubule cells. The kinetics of the two transporters are difficult to identify individually. However, it was assumed that sotalol’s efflux is rate limited by MATE proteins and that the $\text{Permeability\ x\ Surface\ Area}$ product was sufficiently fast enough to populate sotalol in the renal epithelium. Therefore, the unknown kinetics of transport proteins were simplified into one average efflux transport protein which was represented on the apical side of the kidney. This simplified process of the OCT transport system is referred to as OCT throughout this report. To allow the process to follow linear kinetics, the K<sub>m</sub> of OCT was fixed at a high value (400 µM).<sup>100</sup>

**Table 2** presents the sotalol datasets used for building the IV model.

**Table 2. Pharmacokinetic datasets for sotalol IV model construction**

| **Study**        | **Dose and administration**       | **Cohort**                 | **N** | **Age (years)**<sup>a</sup> | **Weight (kg)**<sup>a</sup> |
|------------------|-----------------------------------|----------------------------|-------|--------------------|--------------------|
| Anttila 1976<sup>101</sup>  | 20 mg IV bolus                    | European males and females | 8     | 38.5 \[24 – 53\]   | 72 \[58 – 86\]     |
| Poirier 1990<sup>102</sup> | 0.25 mg/kg IV infusion over 5 min | European Males             | 6     | 23.8 \[22 – 25\]   | 69.5 \[59 – 77\]   |
| Poirier 1990<sup>102</sup> | 0.5 mg/kg IV infusion over 5 min  | European Males             | 6     | 23.8 \[22 – 25\]   | 69.5 \[59 – 77\]   |
| Poirier 1990<sup>102</sup> | 1 mg/kg IV infusion over 5 min    | European Males             | 6     | 23.8 \[22 – 25\]   | 69.5 \[59 – 77\]   |
| Poirier 1990<sup>102</sup> | 2 mg/kg IV infusion over 5 min    | European Males             | 6     | 23.8 \[22 – 25\]   | 69.5 \[59 – 77\]   |
| Salazar 1997<sup>103</sup> | 0.5 mg/kg IV infusion over 2 min  | American Females           | 4     | 35 ± 3.5           | 65.0 ± 8.2         |
| Salazar 1997<sup>103</sup> | 0.5 mg/kg IV infusion over 2 min  | American Males             | 4     | 25 ± 5.5           | 76.5 ± 6.0         |
| Salazar 1997<sup>103</sup> | 1.5 mg/kg IV infusion over 2 min  | American Females           | 4     | 35 ± 3.5           | 65.0 ± 8.2         |
| Salazar 1997<sup>103</sup> | 1.5 mg/kg IV infusion over 2 min  | American Males             | 4     | 25 ± 5.5           | 76.5 ± 6.0         |
| Salazar 1997<sup>103</sup> | 3 mg/kg IV infusion over 2 min    | American Females           | 4     | 35 ± 3.5           | 65.0 ± 8.2         |
| Salazar 1997<sup>103</sup> | 3 mg/kg IV infusion over 2 min    | American Males             | 4     | 25 ± 5.5           | 76.5 ± 6.0         |
| Uematsu 1994<sup>104</sup> | 1 mg/kg IV infusion over 10 min   | Japanese Males             | 6     | 32.7 ± 6.9         | 60.9 ± 6.8         |
| Uematsu 1994<sup>104</sup> | 1.5 mg/kg IV infusion over 10 min | Japanese Males             | 6     | 32.8 ± 6.4         | 55.6 ± 6.3         |

<sup>a</sup>Mean ± SD reported, or range in square brackets if SD not reported.

##### Oral model

The oral PBPK model for the sotalol tablet was developed using literature values for the dissolution profile and solubility (see **Table 3**). A Weibull function was used to describe the dissolution profile.

**Table 3. Oral absorption parameters for sotalol oral model construction**

|  |  |
|--|--|
| Dissolution half-life            | 15 minutes<sup>101</sup>                      |
| Dissolution profile shape        | 0.92                               |
| Water solubility                 | 5510 mg/L<sup>99</sup>                       |
| Intestine 1 concentration        | 1.00 µM                            |
| Intestine 1 K<sub>m</sub>                 | 5000 µM                            |
| Intestine 1 V<sub>max</sub>               | 5000 µM/min                        |
| Intestine 2 concentration        | normally distributed with mean 1.0 µM and SD 0.5 µM<sup>109</sup>      |
| Intestine 2 K<sub>m</sub>                 | 5000 µM                            |
| Intestine 2 V<sub>max</sub>               | 293.35 µM/min               |
| Specific intestinal permeability | 5.56E-7 cm/min (PK-Sim calculated) |

Sotalol is predominantly absorbed in the distal intestine.<sup>105-107</sup> The transporter-mediated uptake of sotalol is likely driven by the influx of a transporter system, referred to as Intestine 2 in the model, that is located on the apical membrane. Segment-dependent absorption was modeled by adding a fast efflux transporter to the basolateral side of the lower ileum and caecum, referred to as Intestine 1. Intestine 2 was added to the apical membrane of the lower ileum and caecum and its K<sub>m</sub> was fixed at 5000 µM to allow for linear kinetics while V<sub>max</sub> was optimized. Optimization of Intestine 2 V<sub>max</sub> was carried out using a Monte Carlo approach to explore the parameter space.

**Table 4. Pharmacokinetic datasets for sotalol oral model construction**

| **Study**            | **Dose and administration** | **Cohort**                 | **N** | **Age (years)**<sup>a</sup> | **Weight (kg)**<sup>a</sup> |
|----------------------|-----------------------------|----------------------------|-------|--------------------|--------------------|
| Anttila 1976<sup>101</sup>      | 160mg                       | European Males and Females | 8     | \[24 – 53\]        | \[58 – 86\]        |
| Poirier 1990<sup>102</sup>     | 100mg                       | European Males             | 6     | 23.8 \[22 – 25\]   | 69.5 \[59 – 77\]   |
| Uematsu 1994<sup>104</sup>     | 50mg                        | Japanese Males             | 6     | 32.3 ± 5.0         | 64.0 ± 8.7         |
| Uematsu 1994<sup>104</sup>     | 100mg                       | Japanese Males             | 6     | 32.3 ± 5.0         | 64.0 ± 8.7         |
| Uematsu 1994<sup>104</sup>     | 200mg                       | Japanese Males             | 6     | 33.2 ± 6.3         | 65.1 ± 6.6         |
| Uematsu 1994<sup>104</sup>     | 300mg                       | Japanese Males             | 6     | 33.0 ± 2.8         | 64.7 ± 8.2         |
| Tjandramaga 1976<sup>108</sup> | 160mg                       | European Males             | 4     | 22                 | NA                 |
| Hanyok 1993<sup>93</sup>       | 160mg                       | Males                      | NA    | NA                 | NA                 |
| Hanyok 1993<sup>93</sup>       | 320mg                       | Males                      | NA    | NA                 | NA                 |

<sup>a</sup>Mean ± SD reported, or range in square brackets or another noted measure if SD not reported.

Figures 3.6.1 and 3.6.2 demonstrate the simulated oral model PK profiles in a population compared against observed Uematsu 1994, 100 mg PO and 200 mg PO study data, respectively.<sup>104</sup>