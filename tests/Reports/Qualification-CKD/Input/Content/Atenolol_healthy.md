**Table 3-5** and **Table 3-7** present the drug-specific parameters of atenolol and the values used for the IV and Oral administration models. Parameter optimization was carried out in PK-Sim using a Monte Carlo approach for exploring the parameter space, using the datasets summarized in **Table 3-6** and **Table 3-8**.

##### IV model

**Table 3-5. Physicochemical properties and ADME of atenolol for the final IV model**

| **Physicochemical properties**    |                             |
|--|--|
| Octanol:water coefficient (logP)             | -0.23 Log Units |
| Fraction unbound in plasma (f<sub>u</sub>)   | 0.89<sup>47</sup> |
| Molecular weight (MW)                        | 266.30 g/mol |
| pKa                                          | 9.60<sup>47</sup> |
| Water solubility                             | 13.30 mg/mL<sup>47</sup> |
| **ADME**                                     |                             |
| Partition coefficient                        | PK-Sim Standard |
| Cell permeability                            | PK-Sim Standard |
| Total clearance                              | 97.3–176.3 mL/min<sup>48</sup> |
| OCT concentration                            | normally distributed with mean 1.0 µM and SD 0.20 µM<sup>46</sup> |
| OCT K<sub>m</sub>                            | 200 µM<sup>50</sup> |
| OCT V<sub>max</sub>                          | 18.99 µM/min |
| GFR fraction                                 | 1.0 |


Atenolol undergoes renal transportation via MATE proteins (MATE1, MATE2/2-K) and OCT proteins (OCT2/SLC22A2).<sup>49</sup> The OCT2 proteins draw atenolol through the basolateral side of the proximal tubule cells and the MATE proteins excrete the drug into the urine from the apical side of the proximal tubule cells. The kinetics of the two transporters are difficult to identify individually. However, it was assumed that atenolol’s efflux is rate limited by MATE proteins and that the Permeability x Surface Area product was sufficiently fast enough to populate atenolol in the renal epithelium. Therefore, the unknown kinetics of transport proteins were simplified into one net efflux transport protein which was represented on the apical side of the kidney. This simplified process of the OCT transport system is referred to as OCT throughout this report. To allow the process to follow linear kinetics, the K<sub>m</sub> of OCT was fixed at a high value (200 µM).<sup>50</sup>

The PK-Sim Standard and Rodgers and Rowland methods to calculate partition coefficients were evaluated with logP and OCT V<sub>max</sub> for optimization to the IV datasets describing atenolol disposition. The observed PK data were best described by using the PK-Sim Standard method for partition coefficient. The PK-Sim Standard method was also used for the calculation of cell permeability.

**Table 3-6** presents the atenolol datasets used for building the IV model. The optimized values are presented in **Table 3-5**. A proportional error model was chosen (i.e., log scaling).

**Table 3-6. Pharmacokinetic datasets for atenolol IV model construction**

| **Study**     | **Dose and administration**   | **Cohort**                       | **N** | **Age (years)**<sup>a</sup> | **Weight (kg)**<sup>a</sup>   |
|---------------|-------------------------------|----------------------------------|-------|--------------------|----------------------|
| Brown 1976<sup>51</sup> | Single 10 mg IV bolus         | European males                   | 4     | 30.5 \[25 – 36\]   | 74                   |
| Brown 1976<sup>51</sup> | Single 20 mg IV bolus         | European males                   | 4     | 30.5 \[25 – 36\]   | 74                   |
| Brown 1976<sup>51</sup> | Single 50 mg IV bolus         | European males                   | 4     | 30.5 \[25 – 36\]   | 74                   |
| Brown 1976<sup>51</sup> | Single 80 mg IV bolus         | European males                   | 4     | 30.5 \[25 – 36\]   | 74                   |
| Kirch 1980<sup>52</sup> | Single 5 mg IV bolus          | European males                   | 4     | 47.5 \[26 – 69\]   | 74.1<sup>b</sup>              |
| Kirch 1981<sup>53</sup> | Single 5 mg IV bolus          | European males (71%) and females | 7     | 28.7 ± 5.9         | 67.9 ± 13.4          |
| Mason 1979<sup>54</sup> | 50 mg IV infusion over 12 min | White American males             | 12    | 24.5 \[21 – 28\]   | 71.6 \[63.6 – 79.5\] |
| Wan 1979<sup>55</sup>   | Single 50 mg IV bolus         | White American males             | 6     | 24.5 \[22 – 27\]   | 72.9 \[64.5 – 79.9\] |

<sup>a</sup>Mean ± SD reported, or range in square brackets if SD not reported.

<sup>b</sup>Not reported in the study. Approximated to be 74.1 kg based on cohort composition and a BMI of 24.

##### Oral model

The oral PBPK model for the atenolol tablet was developed using literature values for the dissolution profile and solubility (see **Table 3-7**). A Weibull function was used to describe the dissolution profile.

**Table 3-7. Oral absorption parameters for the final atenolol oral model**

|   |  |
|--|--|
| Dissolution half-life            | 5 minutes<sup>56</sup>             |
| Dissolution profile shape        | 0.92                        |
| Water solubility                 | 7.90 mg/mL<sup>47</sup>      |
| Intestine 1 concentration        | 1.00 µM                     |
| Intestine 1 K<sub>m</sub>        | 5000 µM                     |
| Intestine 1 V<sub>max</sub>      | 5000 µM/min                 |
| PMAT concentration               | normally distributed with mean 1.0 µM and SD 0.5 µM<sup>45</sup>                   |
| PMAT K<sub>m</sub>               | 5000 µM                     |
| PMAT V<sub>max</sub>             | 214.7 µM/min                |
| Specific intestinal permeability | 1.15E-7 cm/min (PK-Sim calculated) |

Atenolol is predominantly absorbed in the ileum.<sup>57-60</sup> The transporter-mediated uptake of atenolol is likely driven by the influx Plasma Membrane Monoamine Transporter (PMAT/SLC29A4) located on the apical membrane.<sup>61,62</sup> Segment-dependent absorption was modeled by adding a fast efflux transporter to the basolateral side of the lower ileum, referred to as Intestine 1. PMAT was added to the apical membrane of the lower ileum and its K<sub>m</sub> was fixed at 5000 µM to allow for linear kinetics while V<sub>max</sub> was optimized. Optimization of PMAT V<sub>max</sub> was carried out using a Monte Carlo approach to explore the parameter space.

**Table 3-8. Pharmacokinetic datasets for atenolol oral model construction**

| **Study**        | **Dose and administration** | **Cohort**                             | **N** | **Age (years)**<sup>a</sup> | **Weight (kg)**<sup>a</sup>   |
|------------------|-----------------------------|----------------------------------------|-------|--------------------|----------------------|
| Brown 1976<sup>51</sup>    | 50 mg PO                    | European males                         | 4     | 30.5 \[25 – 36\]   | 74                   |
| Conway 1976<sup>63</sup>  | 100 mg PO                   | European males                         | 5     | 38 \[34 – 45\]     | 69 \[64 – 73\]       |
| Frost 2017<sup>64</sup>   | 100 mg PO                   | White American males (87%) and females | 14    | 29 ± 8             | 80.9 ± 10.4          |
| Kirch 1981<sup>53</sup>    | 100 mg PO daily             | European males (71%) and females       | 7     | 28.7 ± 5.9         | 67.9 ± 13.4          |
| Mason 1979<sup>54</sup>    | 25 mg PO solution           | White American males                   | 12    | 24.5 \[22 – 27\]   | 72.9 \[64.5 – 79.9\] |
| Mason 1979<sup>54</sup>    | 100 mg PO solution          | White American males                   | 12    | 24.5 \[22 – 27\]   | 72.9 \[64.5 – 79.9\] |
| Sassard 1977<sup>65</sup> | 100 mg PO                   | European Males                         | 12    | 30<sup>b</sup>              | 69 ± 4<sup>c</sup>            |
| Wan 1979<sup>55</sup>      | 50 mg PO                    | White American males                   | 12    | 28.5 \[21 – 36\]   | 68.6 \[64.5 – 87.6\] |
| Wan 1979<sup>55</sup>      | 100 mg PO                   | White American males                   | 12    | 28.5 \[21 – 36\]   | 68.6 \[64.5 – 87.6\] |

<sup>a</sup>Mean ± SD reported, or range in square brackets or another noted measure if SD not reported.

<sup>b</sup>Age not reported. Estimated to be 30 years old based on cohort composition.

<sup>c</sup>Mean ± SE reported.

**Figures 3-6, 3-7, and 3-8** demonstrate the simulated oral model PK profiles in a population compared against observed data from Wan 1979, Kirch 1981, and Sassard 1977, respectively.<sup>53,55,65</sup>.
