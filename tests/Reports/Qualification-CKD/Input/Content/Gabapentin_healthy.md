**Table 3-1** presents the drug-specific parameters of gabapentin and the values used for the oral administration model. Parameter optimization was carried out in PK-Sim using a Monte Carlo approach for exploring the parameter space, using the datasets summarized in **Table 3-2**.

**Table 3-1. Physicochemical properties and ADME of gabapentin for the final oral model**

| **Physicochemical properties**    |                             |
|--|--|
| Octanol:water coefficient (logP)  | -0.08 Log Units             |
| Fraction unbound in plasma (f<sub>u</sub>) | 0.97<sup>24</sup>                        |
| Molecular weight (MW)             | 171.20 g/mol<sup>25</sup>                |
| pKa                               | 3.68, 10.70<sup>26</sup>                 |
| Water solubility                  | 100.00 mg/mL<sup>27</sup>                |
| **ADME**                          |                             |
| Partition coefficient             | Rodgers and Rowland         |
| Cell permeability                 | PK-Sim Standard             |
| Total apparent clearance          | 100 mL/min<sup>28</sup>                  |
| GFR fraction                      | 1.0                         |
| **Oral absorption parameters**    |                             |
| Formulation dissolution           | Immediately dissolved<sup>a</sup>    |
| LAT1 concentration                | log-normally distributed with mean 1.0 µM and geometric SD 1.40                 |
| LAT1 K<sub>m</sub>                         | 8630.97 µM                  |
| LAT1 V<sub>max</sub>                       | 763.59 µM/min               |
| Specific intestinal permeability  | 2.09E-7 cm/min              |

<sup>a</sup>T<sub>max</sub> of solution <sup>29</sup> and tablets <sup>30</sup> equivalent; all oral formulations modeled as dissolved.

Gabapentin was assumed to be immediately dissolved as a solution or IR formulation.

LAT1 was added as an influx transporter and its relative expression throughout the organs of the body was defined by RT-PCR within the PK-Sim database query. Based on cell line work showing no colonic permeability, colonic LAT1 was removed.<sup>22</sup>

**Table 3-2** presents the gabapentin datasets used for building the oral model. Lipophilicity was optimized to -0.08 Log Units. Cell line K<sub>m</sub> values of LAT1 were found in the range of 200-500 uM<sup>31</sup> and this value was optimized in order to accurately recreate the nonlinear absorption of gabapentin. V<sub>max</sub> was also optimized to the oral datasets.

**Table 3-2. Pharmacokinetic datasets for gabapentin oral model construction**

| **Study**              | **Dose and administration** | **Cohort**                    | **N** | **Age (years)**<sup>a</sup> | **Weight (kg)**<sup>a</sup> |
|------------------------|-----------------------------|-------------------------------|-------|--------------------|--------------------|
| Boyd 1999<sup>32</sup>          | 400 mg                      | White American females        | 18    | 49.1 ± 16.5        | 65.7 ± 8.5         |
| Boyd 1999<sup>32</sup>          | 400 mg                      | White American males          | 18    | 49.9 ± 19.8        | 79.4 ± 10.8        |
| Gidal 1998<sup>30</sup>         | 400 mg tid                  | European males                | 1     | 30<sup>b</sup>              | 73<sup>b</sup>              |
| Gidal 1998<sup>30</sup>         | 800 mg tid                  | European males                | 1     | 30<sup>b</sup>              | 73<sup>b</sup>              |
| Gidal 1998<sup>30</sup>         | 1200 mg tid                 | European males                | 1     | 30<sup>b</sup>              | 73<sup>b</sup>              |
| Gidal 1998<sup>30</sup>         | 1600 mg tid                 | European males                | 1     | 30<sup>b</sup>              | 73<sup>b</sup>              |
| Tjandrawinata 2014<sup>33</sup> | 300 mg                      | Asian males (65%) and females | 37    | 30 \[19 – 54\]<sup>c</sup>  | 60<sup>c</sup>              |

<sup>a</sup>Mean ± SD reported, or range in square brackets if SD not reported.

<sup>b</sup>Age and weight of subject estimated from a BMI of approximately 24.

<sup>c</sup>Approximated based on the reported range of BMI, 18.03 – 24.99 kg/m<sup>2</sup>.

**Figure 3-1** demonstrates the simulated oral model PK profiles in a healthy population compared against observed Blum 1994 study data.<sup>34</sup>
