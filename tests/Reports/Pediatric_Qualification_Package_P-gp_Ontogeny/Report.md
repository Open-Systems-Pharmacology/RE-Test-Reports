



# Pediatric Qualification Package: P-gp Ontogeny





| Version                         | 1.0-OSP11.0                                                   |
| ------------------------------- | ------------------------------------------------------------ |
| Qualification Plan Release      | https://github.com/Open-Systems-Pharmacology/Pediatric_Qualification_Package_P-gp_Ontogeny/releases/tag/v1.0 |
| OSP Version                     | 11.0                                                          |
| Qualification Framework Version | 3.0                                                          |





This qualification report is filed at:

[https://github.com/Open-Systems-Pharmacology/OSP-Qualification-Reports](https://github.com/Open-Systems-Pharmacology/OSP-Qualification-Reports)



# Table of Contents

 * [1 Introduction to Pediatric Translation and P-gp Ontogeny Qualification ](#introduction)
 * [2 Pediatric translation qualification results ](#results)
   * [2.1 Digoxin PK Ratio tables and Figures ](#digoxin_children)
 * [3 References ](#references)





# 1 Introduction to Pediatric Translation and P-gp Ontogeny Qualification <a id="introduction"></a>


The presented qualification report evaluates the predictive performance of the OSP suite to predict P-gp related drug transporter activity in children.

Therefore, PBPK models of specific *in vivo* probe substances covering children aged below 6 months up to adolescents were built and evaluated. All models are whole-body PBPK models, allowing for dynamic pediatric translation in organs expressing P-gp. The qualification report demonstrates the level of confidence of the OSP suite with regard to reliable PBPK predictions of age-related P-gp-mediated drug transport during model-informed drug development. The presented PBPK models as well as the respective qualification plan and qualification report are provided open-source and transparently documented ([https://github.com/Open-Systems-Pharmacology/Pediatric_Qualification_Package_P-gp_Ontogeny](https://github.com/Open-Systems-Pharmacology/Pediatric_Qualification_Package_P-gp_Ontogeny)). 


## Translation of Adult PBPK to Children

Using a developed and validated (adult) PBPK model for an *in vivo* probe substance, a pediatric PBPK model can be established for children by translating physiology, clearance processes (as parameterized in the adult model) and age-dependent protein binding including the variability therein.[[Maharaj 2013](#References)] 

The PBPK models are developed with clinical data of healthy adult subjects obtained from the literature, covering available dosing ranges for e.g. intravenous as well as oral administration, to capture both systemic clearance as well as gut-wall metabolic clearance processes. For orally administered drugs, the same formulations that are used in children should ideally be included in the model for adults. Plasma concentrations following multiple dose application, mass balance information and other clinical measurements need to be included for model development, if available. During model translation from adults to children for a specific substance, uncertainties in data-quality caused by impact of disease or the target study population, inaccurate in vitro assay-techniques regarding mass balance, as well as study differences may cause not being able to adequately predict the PK in children for all reported studies. 

Prediction performance of the PBPK model for these probe substances in children are then shown by means of e.g. predicted versus observed clearance (CL) plots, of which the results support an adequate prediction of the ontogeny function for the application of PBPK model translation of adult PBPK to children.

For qualification purpose, during the translation of adult PBPK to children the following assumptions and considerations were made: 

- when translating an adult model to children, it was assumed that the metabolism and excretion pathways are qualitatively the same in children as in adults.
- no further changes to input parameters other than those for the physiology and protein binding were assumed. All other parameters (e.g. lipophilicity, intestinal permeability, solubility) were kept unchanged.

## Anthropometric and Physiological Information 

The age-dependencies of the relevant anthropometric (height, weight) and physiological parameters (e.g. blood flows, organ volumes, binding protein concentrations, hematocrit, cardiac output) in children was gathered from the literature and has been previously summarized [[Edginton 2006](#References)]. The information was incorporated into PK-Sim® and was used as default values for the simulations in children.

The  applied ontogeny and variability of plasma proteins and active processes that are integrated into PK-Sim® for translation to children are described in the publicly available ‘PK-Sim® Ontogeny Database Version 7.3 [[Ontogeny Database](#References)] or otherwise referenced for the specific process.

## Qualification of **P-gp transporter ontogeny**

To qualify the OSP suite for the pediatric translation of the pharmacokinetics of drugs that are transported by P-gp, the following probe substance was included:

- Digoxin [[Digoxin-Model](#References)]


The adult PBPK model reports and the corresponding PK-Sim project files are filed at: [https://github.com/Open-Systems-Pharmacology/OSP-PBPK-Model-Library/](https://github.com/Open-Systems-Pharmacology/OSP-PBPK-Model-Library/)






# 2 Pediatric translation qualification results <a id="results"></a>


## Evaluation of Pediatric translation

All pediatric translations are pure retrospective predictions, no pediatric pharmacokinetic studies were used to inform model parameters. All parameters necessary to model the pediatric populations, such as demographics (age, weight, height), as well as dosing formulation information were taken from the respective pediatrics studies from literature in order to evaluate their predictive performance. 

The models were evaluated by ratio plots of area under the plasma concentration-time curve (AUC), or clearance (CL) values resulting from our predictions to the values observed during clinical studies, and by comparison of concentration-time profiles if available. As a quantitative measure of the descriptive and predictive performance of each model, the geometric mean fold error was calculated according to Eq. 1:

Eq. 1: ${\Huge  GMFE = 10^{\frac{\sum(|log(\frac{Pred}{Obs})|)}{n}} }$

with `GMFE` = **geometric mean fold error** of all AUC or CL predictions of the respective model, `Pred` PK parameter = **predicted AUC or CL**, `Obs` PK parameter = **observed AUC or CL**, and `n` = **number of observed values**.

The ratios of predicted over observed mean AUC or CL values from all compound were also plotted across all age groups in the figure below. As illustrated, most of the predictions were within the 0.5 to 2.0 range (2-fold error). 

In the next sections the demographics as well as the evaluation results of the predictive performance of the specific compound PBPK models in children can be found.  






## 2.1 Digoxin PK Ratio tables and Figures <a id="digoxin_children"></a>


### Digoxin model

Digoxin PBPK predictions in children were evaluated using pharmacokinetic (PK) data reported in the following studies: 

- Ratnapalan S, Griffiths K, Costei AM, Benson L, Koren G. Digoxin-carvedilol interactions in children. J Pediatr. 2003 May;142(5):572-4.[[Ratnapalan 2003](#References)]
- Rane A, Wilson JT. Clinical pharmacokinetics in infants and children. Clin Pharmacokinet. 1976;1(1):2-24.[[Rane 1976](#References)]
- Nyberg L, Wettrell G. Pharmacokinetics and dosage of digoxin in neonates and infants. Eur J Clin Pharmacol. 1980 Jul;18(1):69-74.[[Nyberg 1980](#References)]

The pediatric PBPK model predicted the CL values of Digoxin observed in pediatric studies reasonably across all available age groups, ranging from 3 days to 8 years old. The ratios of mean predicted over observed CL values are illustrated in the table below as well as in the predicted versus observed CL ratio plot, showing that most predictions in children were within the 2-fold error range of observed values. 



<a id="figure-2-1"></a>

![](images/002_section_Results/003_section_Digoxin_children/1_pk_ratio_plot_CL.png)



**Figure 2-1: Overall predictivity of the Digoxin PBPK model. Open circles represent mean ratios of PBPK predicted AUC over observed AUC of digoxin in children 3 days to 8 years old. Blue dashed lines and red dotted lines represent the 1.5-fold and 2-fold error, respectively.**


<br>
<br>


<a id="table-2-1"></a>

**Table 2-1: Measure of Overall predictivity of the Digoxin PBPK model. Open circles represent mean ratios of PBPK predicted AUC over observed AUC of digoxin in children 3 days to 8 years old. Blue dashed lines and red dotted lines represent the 1.5-fold and 2-fold error, respectively.**


|                       |Number |Ratio [%] |
|:----------------------|:------|:---------|
|Points total           |13     |-        |
|Points within 1.5 fold |10     |76.92     |
|Points within 2 fold   |11     |84.62     |


<br>
<br>


<a id="table-2-2"></a>

**Table 2-2: GMFE for Overall predictivity of the Digoxin PBPK model. Open circles represent mean ratios of PBPK predicted AUC over observed AUC of digoxin in children 3 days to 8 years old. Blue dashed lines and red dotted lines represent the 1.5-fold and 2-fold error, respectively.**


|Parameter |GMFE |
|:---------|:----|
|CL        |1.46 |


<br>
<br>





# 3 References <a id="references"></a>


**Digoxin-Model** Digoxin-Model, Whole-body PBPK model of Digoxin. ([https://github.com/Open-Systems-Pharmacology/Digoxin-Model](https://github.com/Open-Systems-Pharmacology/Digoxin-Model))

**Edginton 2006** Edginton AN, Schmitt W, Willmann S. Development and evaluation of a generic physiologically based pharmacokinetic model for children. Clin Pharmacokinet. 2006;45(10):1013-34.

**Maharaj 2013** Maharaj AR, Barrett JS, Edginton AN. A workflow example of PBPK modeling to support pediatric research and development: case study with lorazepam. The AAPS journal. 2013;15(2): 455-464.

**Meistelman 1987** Meistelman C, Saint-Maurice C, Lepaul M, Levron JC, Loose JP, Mac Gee K. A comparison of alfentanil pharmacokinetics in children and adults. Anesthesiology. 1987 Jan;66(1):13-6.

**Nyberg 1980 **Nyberg L, Wettrell G. Pharmacokinetics and dosage of digoxin in neonates and infants. Eur J Clin Pharmacol. 1980 Jul;18(1):69-74.

**Ontogeny Database** OSPSuite.Documentation/PK-Sim Ontogeny Database Version 7.3.pdf ([https://github.com/Open-Systems-Pharmacology/OSPSuite.Documentation/blob/38cf71b384cfc25cfa0ce4d2f3addfd32757e13b/PK-Sim%20Ontogeny%20Database%20Version%207.3.pdf](https://github.com/Open-Systems-Pharmacology/OSPSuite.Documentation/blob/38cf71b384cfc25cfa0ce4d2f3addfd32757e13b/PK-Sim%20Ontogeny%20Database%20Version%207.3.pdf))

**Rane 1976** Rane A, Wilson JT. Clinical pharmacokinetics in infants and children. Clin Pharmacokinet. 1976;1(1):2-24.

**Ratnapalan 2003** Ratnapalan S, Griffiths K, Costei AM, Benson L, Koren G. Digoxin-carvedilol interactions in children. J Pediatr. 2003 May;142(5):572-4.



