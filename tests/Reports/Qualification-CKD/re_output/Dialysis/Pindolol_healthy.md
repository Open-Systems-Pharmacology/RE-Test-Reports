A population of individuals based on Guerret 1983 subjects was defined using the physiological database of PK-Sim.<sup>86,2</sup> **Table 1** and **Table 3** present the drug-specific parameters of pindolol and the values used for the IV and Oral administration models. Parameter optimization was carried out in PK-Sim using a Monte Carlo approach for exploring the parameter space, using the datasets summarized in **Table 2** and **Table 4**.

##### IV model

**Table 1. Physicochemical properties and ADME of pindolol for IV model construction**

| **Physicochemical properties**    |                            |
|--|--|
| Octanol:water coefficient (logP)  | 1.75 Log Units<sup>81</sup>          |
| Fraction unbound in plasma (f<sub>u</sub>) | 0.45<sup>82</sup>                    |
| Molecular weight (MW)             | 248.32 g/mol               |
| pKa                               | 8.80<sup>83</sup>           |
| Water solubility                  | 7.90 mg/mL<sup>81</sup>     |
| **ADME**                          |                            |
| Partition coefficient             | Rodgers and Rowland        |
| Cell permeability                 | PK-Sim Standard            |
| Total clearance                   | 400 mL/min (FDA Monograph) |
| CYP2D6 concentration              | log-normally distributed with mean 0.4 µM and geometric SD 1.40 µM    |
| CYP2D6 specific clearance         | 0.26 1/min                 |
| OCT concentration                 | normally distributed with mean 1.0 µM and SD 0.20 µM   |
| OCT K<sub>m</sub>                          | 100 µM                     |
| OCT V<sub>max</sub>                        | 139.7 µM/min               |
| GFR fraction                      | 1.0                        |


Since pindolol is significantly metabolized by the liver (60%), the expression of the CYP2D6 enzyme was added with a first order intrinsic clearance process. Its distribution within the PBPK model was defined by RT-PCR within the PK-Sim database query.

Pindolol also undergoes renal transportation via MATE proteins (MATE1, MATE2/2-K) and OCT proteins (OCT2/SLC22A2).<sup>84</sup> The OCT2 proteins draw pindolol through the basolateral side of the proximal tubule cells and the MATE proteins excrete the drug into the urine from the apical side of the proximal tubule cells. The kinetics of the two transporters are difficult to identify individually as there is no in vitro data. However, it was assumed that pindolol’s efflux is rate limited by MATE proteins and that the $\text{Permeability\ x\ Surface\ Area}$ product was sufficiently fast enough to populate pindolol in the renal epithelium. Therefore, the unknown kinetics of transport proteins were simplified into one net efflux transport protein which was represented on the apical side of the kidney. This simplified process of the OCT transport system is referred to as OCT throughout this report. To allow the process to follow linear kinetics, the K<sub>m</sub> of OCT was fixed at a high value (100 µM).

**Table 2** presents the pindolol datasets used for building the IV model. The specific clearance of CYP2D6 and V<sub>max</sub> of OCT were optimized to the IV datasets describing pindolol disposition.

**Table 2. Pharmacokinetic datasets for pindolol IV model construction**

| **Study**        | **Dose and administration** | **Cohort**                       | **N** | **Age (years)**<sup>a</sup> | **Weight (kg)**<sup>a</sup> |
|------------------|-----------------------------|----------------------------------|-------|--------------------|--------------------|
| Galeazzi 1979<sup>85</sup> | 3 mg IV infusion over 5 min | European males                   | 7     | 23 \[22 – 25\]     | 73 \[65 – 90\]     |
| Guerret 1983<sup>86</sup>  | 3 mg IV infusion over 6 min | European males (50%) and females | 6     | 28 ± 2.3           | 63 ± 3.0           |
| Lavene 1977<sup>87</sup>   | Single 0.04 mg/kg IV bolus  | European males and females       | 9     | 47 \[23 – 63\]     | 70<sup>b</sup>              |

<sup>a</sup>Mean ± SD reported, or range in square brackets if SD not reported.

<sup>b</sup>Not reported in the study. Approximated to be 70 kg based on cohort composition and a BMI of 23.

##### Oral model

The oral PBPK model for the pindolol tablet was developed using literature values for the dissolution profile and solubility (see **Table 3**). A Weibull function was used to describe the dissolution profile.

**Table 3. Oral absorption parameters for pindolol oral model construction**

|   |   |
|--|--|
| Dissolution half-life            | 20 minutes<sup>88</sup>                      |
| Dissolution profile shape        | 0.92                               |
| Water solubility                 | 7.90 mg/mL<sup>81</sup>                      |
| Specific intestinal permeability | 7.54E-6 cm/min              |

**Table 4** shows the PK datasets used for oral model building.

**Table 4. Pharmacokinetic datasets for pindolol oral model construction**

| **Study**        | **Dose and administration** | **Cohort**                       | **N** | **Age (years)**<sup>a</sup> | **Weight (kg)**<sup>a</sup> |
|------------------|-----------------------------|----------------------------------|-------|--------------------|--------------------|
| Aelig 1982<sup>89</sup>    | 15 mg PO                    | European males                   | 8     | 27 \[24 – 32\]     | 76 \[65 – 100\]    |
| Balant 1981<sup>90</sup>  | 15 mg PO                    | White American males             | 7     | 27 \[24 – 30\]     | 68 \[58 – 78\]     |
| Gretzer 1986<sup>91</sup> | 10 mg PO                    | European males (80%) and females | 10    | 22 \[18 – 25\]     | 77 ± 10            |
| Guerret 1983<sup>86</sup>  | 5 mg PO                     | European males (50%) and females | 6     | 28 ± 2.3           | 63 ± 3.0           |

<sup>a</sup>Mean ± SD reported, or range in square brackets if SD not reported.

Figures 3.5.1 and 3.5.2 respectively demonstrate the simulated IV and oral model PK profiles in a healthy population compared against observed Guerret 1983 study data.<sup>86</sup>