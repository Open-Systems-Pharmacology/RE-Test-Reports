**Table 3-3** presents the drug-specific parameters of acebutolol and the values used for the combined IV-oral model. Parameter optimization was carried out in PK-Sim using a Monte Carlo approach for exploring the parameter space, using the datasets summarized in **Table 3-4**.

**Table 3-3. Physicochemical properties and ADME of acebutolol for the final IV-oral model**

| **Physicochemical properties**    |                             |
|--|--|
| Octanol:water coefficient (logP)           | 1.71 Log Units<sup>38</sup> |
| Fraction unbound in plasma (f<sub>u</sub>) | 0.85<sup>39</sup> |
| Molecular weight (MW)                      |  336.43 g/mol<sup>39</sup> |
| pKa                                        | 9.40<sup>40</sup> |
| Water solubility                           |  200 mg/mL<sup>40</sup> |
| **ADME**                                   |                             |
| Partition coefficient                      | Rodgers and Rowland |
| Cell permeability                          | PK-Sim Standard     |
| Total clearance                            | 615 ± 59 mL/min<sup>41</sup>     |
| CYP concentration                          | log-normally distributed with mean 1.0 µM and geometric SD 1.40   |
| CYP specific clearance                     | 0.68 1/min          |
| OCT concentration                          | normally distributed with mean 1.0 µM and SD 0.20 µM<sup>46</sup>             |
| OCT K<sub>m</sub>                          |  100 µM |
| OCT In vitro V<sub>max</sub>/transporter   | 35.31 µM/min |
| GFR fraction                               |  1.0 |
| **Oral absorption parameters**             |                             |
| Dissolution half-time                      | 10 minutes |
| Dissolution profile shape                  | 0.92 |
| Intestine 1 concentration                  | 1.00 µM |
| Intestine 1 K<sub>m</sub>                  | 5000 µM |
| Intestine 1 V<sub>max</sub>                | 5000 µM/min |
| Intestine 2 concentration                  | normally distributed with mean 1.0 µM and SD 0.5 µM<sup>45</sup> |
| Intestine 2 K<sub>m</sub>                  | 5000 µM |
| Intestine 2 V<sub>max</sub>                | 157.34 µM/min |
| Specific intestinal permeability           | 1.48E-6 cm/min (PK-Sim calculated) |

Since acebutolol is significantly metabolized by the liver, the expression of the non-specific enzyme processes, referred to as CYP throughout this report, were added with a first order intrinsic clearance process.

Acebutolol undergoes renal transportation via MATE proteins (MATE1, MATE2/2-K) and OCT proteins (OCT2/SLC22A2). The OCT2 proteins draw acebutolol through the basolateral side of the proximal tubule cells and the MATE proteins excrete the drug into the urine from the apical side of the proximal tubule cells. The kinetics of the two transporters are difficult to identify individually as there is no in vitro data. However, it was assumed that acebutolol’s efflux is rate limited by MATE proteins and that the Permeability x Surface Area product was sufficiently fast enough to populate acebutolol in the renal epithelium. Therefore, the unknown kinetics of transport proteins were simplified into one average efflux transport protein which was represented on the apical side of the kidney. This simplified process of the OCT transport system is referred to as OCT throughout this report. The process followed active transport Michaelis-Menten kinetics and the K<sub>m</sub> of OCT was fixed at 100 µM.

The acebutolol oral formulation was developed assuming high solubility and fast dissolution based on its hydrophilicity (see **Table 3-3**). A Weibull function was used to describe the dissolution profile. The intestinal transporter-mediated uptake of acebutolol is likely driven by the influx of a transporter system, referred to as Intestine 2, that is located on the apical membrane of the caecum. Segment-dependent absorption was modeled by adding a fast efflux transporter to the basolateral side of the caecum, referred to as Intestine 1. Intestine 2 was added to the apical membrane of the caecum and its K<sub>m</sub> was fixed at 5000 µM to allow for linear kinetics while V<sub>max</sub> was optimized.

**Table 3-4** presents the acebutolol datasets used for building the combined IV-oral model. The optimized CYP specific clearance, OCT V<sub>max</sub>, Intestine 2 V<sub>max</sub>, and specific intestinal permeability values are presented in **Table 3-3**.

The estimated fraction excreted to urine of 12% approximated the observed value of 15% measured at 70 hours after oral administration.<sup>37,42,43</sup> In contrast, the estimated fraction excreted to urine of 21% slightly underestimated the observed value of 35% measured at 48 hours after IV bolus administration.<sup>35,41</sup>

**Table 3-4. Pharmacokinetic datasets for acebutolol IV-oral model construction**

| **Study**      | **Dose and administration** | **Cohort**     | **N** | **Age (years)**<sup>a</sup> | **Weight (kg)**<sup>a</sup> |
|----------------|-----------------------------|----------------|-------|--------------------|--------------------|
| Gulaid 1981<sup>42</sup> | 400 mg PO                   | European males | 8     | 24 \[20 – 28\]     | 66.2<sup>b</sup>            |
| Roux 1980<sup>37</sup>   | 200 mg PO                   | European males | 10    | 26 ± 4             | 68 ± 9             |
| Roux 1983<sup>43</sup>  | 400 mg PO                   | European males | 12    | 23.5 ± 2.1         | 69.3 ± 7.5         |
| Roux 1983<sup>44</sup>  | 0.35 mg/kg IV bolus         | European males | 5     | 23.4 ± 1.7         | 76 ± 3.9           |
| Roux 1983<sup>44</sup>  | 400 mg PO                   | European males | 5     | 23.4 ± 1.7         | 76 ± 3.9           |

<sup>a</sup>Mean ± SD reported, or range in square brackets if SD not reported.

<sup>b</sup>Average weight not reported in study. Estimated based on an average BMI of 22 kg/m<sup>2</sup>.

**Figure 3-4** shows the simulated oral model PK profiles in a healthy population compared against observed Roux 1980 study data.<sup>37</sup>
