A population of individuals based on normal healthy subjects in the Dume 1971 study was defined using the physiological database of PK-Sim.<sup>77,2</sup> **Table 1** presents the drug-specific parameters of gentamicin and the values used for the IV administration model. Parameter optimization was carried out in PK-Sim using a Monte Carlo approach for exploring the parameter space, using the datasets summarized in **Table 2**.

**Table 1. Physicochemical properties and ADME of gentamicin for IV model construction**

| **Physicochemical properties**    |                         |
|--|--|
| Octanol:water coefficient (logP)           | -1.84 Log Units             |
| Fraction unbound in plasma (f<sub>u</sub>) | 1<sup>72</sup>                    |
| Molecular weight (MW)                      | 477.6 g/mol<sup>73</sup>          |
| pKa                                        | 6.2, 7.4, 7.7<sup>74</sup>        |
| Water solubility                           | 100.0 mg/mL<sup>72</sup>          |
| **ADME**                                   |                         |
| Partition coefficient                      | Rodgers and Rowland     |
| Cell permeability                          | PK-Sim Standard         |
| Total clearance                            | 5 – 200 mL/min<sup>75,76</sup>     |
| GFR fraction                               | 1.0                     |

**Table 2** presents the gentamicin datasets used for building the IV model.

**Table 2. Pharmacokinetic datasets for gentamicin IV model construction**

| **Study**          | **Dose and administration**   | **Cohort**                       | **N** | **Age (years)**<sup>a</sup> | **Weight (kg)**<sup>a</sup> |
|--------------------|-------------------------------|----------------------------------|-------|--------------------|--------------------|
| Dume 1971<sup>77</sup>       | 40 mg IV bolus                | European males                   | 7     | 30<sup>b</sup>              | 73<sup>b</sup>              |
| Gyselynck 1971<sup>75</sup>  | 2 mg/kg IV bolus              | White American males             | 1     | 40                 | 83.6               |
| Lorentzen 1996<sup>78</sup> | 240 mg IV bolus               | European males                   | 7     | 30.5 \[25 – 36\]   | 73.1<sup>b</sup>            |
| Meunier 1987<sup>79</sup>   | 80 mg IV bolus                | European males (50%) and females | 10    | 28 \[22 – 34\]     | 64.2 \[55 – 85\]   |
| Meunier 1987<sup>79</sup>   | 80 mg IV infusion over 15 min | European males (50%) and females | 10    | 28 \[22 – 34\]     | 64.2 \[55 – 85\]   |

<sup>a</sup>Mean ± SD reported, or range in square brackets if SD not reported.

<sup>b</sup>For average adult males, the average weight of these subjects was chosen based on a BMI of approximately 24.

Figure 3.4.1 demonstrates the simulated intravenous model PK profiles in a healthy population compared against the observed data from Dume 1971.<sup>77</sup>
