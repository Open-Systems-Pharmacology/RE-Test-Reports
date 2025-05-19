# Report NO9

# Table of Contents

 * [1 PK parameters](#pk-parameters)
   * [1.1 PK Parameters of C1 plasma](#1_pk_parameters_organism_peripheralvenousblood_c1_plasma__peripheral_venous_blood_)
     * [1.1.1 AUC_tEnd](#2_pk_parameters_organism_peripheralvenousblood_c1_plasma__peripheral_venous_blood__auc_tend)
     * [1.1.2 C_max](#5_pk_parameters_organism_peripheralvenousblood_c1_plasma__peripheral_venous_blood__c_max)
     * [1.1.3 C_tEnd](#8_pk_parameters_organism_peripheralvenousblood_c1_plasma__peripheral_venous_blood__c_tend)
     * [1.1.4 t_max](#11_pk_parameters_organism_peripheralvenousblood_c1_plasma__peripheral_venous_blood__t_max)
     * [1.1.5 Total body clearance/F](#14_pk_parameters_organism_peripheralvenousblood_c1_plasma__peripheral_venous_blood__cl)
     * [1.1.6 Vss (plasma)/F](#17_pk_parameters_organism_peripheralvenousblood_c1_plasma__peripheral_venous_blood__vss)
 * [2 Time profiles and residual plots](#time-profiles)
   * [2.1 Time profiles and residual plots for single IV administration](#time-profiles-single_iv_administration)
   * [2.2 Time profiles and residual plots for children_0_3y](#time-profiles-children_0_3y)
   * [2.3 Time profiles and residual plots for children_3_6y](#time-profiles-children_3_6y)
   * [2.4 Time profiles and residual plots for children_6_9y](#time-profiles-children_6_9y)

# 1 PK parameters<a id="pk-parameters"></a>

## 1.1 PK Parameters of C1 plasma<a id="1_pk_parameters_organism_peripheralvenousblood_c1_plasma__peripheral_venous_blood_"></a>

### 1.1.1 AUC_tEnd<a id="2_pk_parameters_organism_peripheralvenousblood_c1_plasma__peripheral_venous_blood__auc_tend"></a>

<a id="figure-1-1"></a>

![](PKAnalysis/3_pk_parameters_AUC_tEnd_log.png)

**Figure 1-1: AUC_tEnd of C1 plasma for single IV administration, children_0_3y, children_3_6y, children_6_9y shown as box-whisker plot, which indicates  the 5<sup>th</sup>, 25<sup>th</sup>, 50<sup>th</sup>, 75<sup>th</sup>, 95<sup>th</sup> percentiles in logarithmic scale.**

<br>
<br>

<a id="figure-1-2"></a>

![](PKAnalysis/4_pk_parameters_AUC_tEnd.png)

**Figure 1-2: AUC_tEnd of C1 plasma for single IV administration, children_0_3y, children_3_6y, children_6_9y shown as box-whisker plot, which indicates  the 5<sup>th</sup>, 25<sup>th</sup>, 50<sup>th</sup>, 75<sup>th</sup>, 95<sup>th</sup> percentiles in linear scale.**

<br>
<br>

<a id="table-1-1"></a>

**Table 1-1: Population statistics summarizing AUC_tEnd of C1 plasma for single IV administration, children_0_3y, children_3_6y, children_6_9y reported in [µg*h/l]**

|Population               |N  |5<sup>th</sup> pctl |25<sup>th</sup> pctl |50<sup>th</sup> pctl |75<sup>th</sup> pctl |95<sup>th</sup> pctl |Mean     |SD      |Geo Mean |Geo SD |
|:------------------------|:--|:-------------------|:--------------------|:--------------------|:--------------------|:--------------------|:--------|:-------|:--------|:------|
|single IV administration |10 |8843.16             |9408.69              |11804.59             |13514.22             |16208.15             |11945.12 |2899.61 |11645.31 |1.27   |
|children_0_3y            |5  |10180.61            |11060.57             |12511.74             |16127.16             |16812.38             |13328.76 |3096.21 |13043.50 |1.26   |
|children_3_6y            |5  |12619.16            |12676.50             |12862.73             |16120.44             |17498.06             |14421.39 |2416.84 |14267.25 |1.18   |
|children_6_9y            |5  |11633.07            |13294.59             |16361.30             |16819.53             |17066.94             |14964.38 |2593.43 |14770.23 |1.20   |

<br>
<br>

### 1.1.2 C_max<a id="5_pk_parameters_organism_peripheralvenousblood_c1_plasma__peripheral_venous_blood__c_max"></a>

<a id="figure-1-3"></a>

![](PKAnalysis/6_pk_parameters_C_max_log.png)

**Figure 1-3: C_max of C1 plasma for single IV administration, children_0_3y, children_3_6y, children_6_9y shown as box-whisker plot, which indicates  the 5<sup>th</sup>, 25<sup>th</sup>, 50<sup>th</sup>, 75<sup>th</sup>, 95<sup>th</sup> percentiles in logarithmic scale.**

<br>
<br>

<a id="figure-1-4"></a>

![](PKAnalysis/7_pk_parameters_C_max.png)

**Figure 1-4: C_max of C1 plasma for single IV administration, children_0_3y, children_3_6y, children_6_9y shown as box-whisker plot, which indicates  the 5<sup>th</sup>, 25<sup>th</sup>, 50<sup>th</sup>, 75<sup>th</sup>, 95<sup>th</sup> percentiles in linear scale.**

<br>
<br>

<a id="table-1-2"></a>

**Table 1-2: Population statistics summarizing C_max of C1 plasma for single IV administration, children_0_3y, children_3_6y, children_6_9y reported in [µg/l]**

|Population               |N  |5<sup>th</sup> pctl |25<sup>th</sup> pctl |50<sup>th</sup> pctl |75<sup>th</sup> pctl |95<sup>th</sup> pctl |Mean    |SD     |Geo Mean |Geo SD |
|:------------------------|:--|:-------------------|:--------------------|:--------------------|:--------------------|:--------------------|:-------|:------|:--------|:------|
|single IV administration |10 |3302.16             |3405.09              |3757.09              |4221.53              |4473.51              |3821.55 |470.40 |3795.86  |1.13   |
|children_0_3y            |5  |3106.38             |3303.05              |3395.22              |3855.09              |3948.88              |3516.58 |385.24 |3499.75  |1.12   |
|children_3_6y            |5  |2812.86             |2932.02              |3303.99              |3382.07              |3415.62              |3165.03 |288.82 |3154.20  |1.10   |
|children_6_9y            |5  |3124.12             |3304.15              |3562.26              |3768.33              |3921.70              |3534.78 |352.48 |3520.56  |1.11   |

<br>
<br>

### 1.1.3 C_tEnd<a id="8_pk_parameters_organism_peripheralvenousblood_c1_plasma__peripheral_venous_blood__c_tend"></a>

<a id="figure-1-5"></a>

![](PKAnalysis/9_pk_parameters_C_tEnd_log.png)

**Figure 1-5: C_tEnd of C1 plasma for single IV administration, children_0_3y, children_3_6y, children_6_9y shown as box-whisker plot, which indicates  the 5<sup>th</sup>, 25<sup>th</sup>, 50<sup>th</sup>, 75<sup>th</sup>, 95<sup>th</sup> percentiles in logarithmic scale.**

<br>
<br>

<a id="figure-1-6"></a>

![](PKAnalysis/10_pk_parameters_C_tEnd.png)

**Figure 1-6: C_tEnd of C1 plasma for single IV administration, children_0_3y, children_3_6y, children_6_9y shown as box-whisker plot, which indicates  the 5<sup>th</sup>, 25<sup>th</sup>, 50<sup>th</sup>, 75<sup>th</sup>, 95<sup>th</sup> percentiles in linear scale.**

<br>
<br>

<a id="table-1-3"></a>

**Table 1-3: Population statistics summarizing C_tEnd of C1 plasma for single IV administration, children_0_3y, children_3_6y, children_6_9y reported in [µg/l]**

|Population               |N  |5<sup>th</sup> pctl |25<sup>th</sup> pctl |50<sup>th</sup> pctl |75<sup>th</sup> pctl |95<sup>th</sup> pctl |Mean   |SD     |Geo Mean |Geo SD |
|:------------------------|:--|:-------------------|:--------------------|:--------------------|:--------------------|:--------------------|:------|:------|:--------|:------|
|single IV administration |10 |293.81              |311.03               |406.87               |459.20               |552.40               |404.54 |102.70 |393.41   |1.28   |
|children_0_3y            |5  |363.81              |404.48               |462.65               |591.82               |624.99               |489.18 |119.95 |477.42   |1.28   |
|children_3_6y            |5  |479.32              |481.84               |482.89               |617.71               |664.82               |547.54 |93.29  |541.48   |1.18   |
|children_6_9y            |5  |432.81              |497.25               |625.43               |651.28               |656.48               |569.69 |107.44 |560.90   |1.22   |

<br>
<br>

### 1.1.4 t_max<a id="11_pk_parameters_organism_peripheralvenousblood_c1_plasma__peripheral_venous_blood__t_max"></a>

<a id="figure-1-7"></a>

![](PKAnalysis/12_pk_parameters_t_max_log.png)

**Figure 1-7: t_max of C1 plasma for single IV administration, children_0_3y, children_3_6y, children_6_9y shown as box-whisker plot, which indicates  the 5<sup>th</sup>, 25<sup>th</sup>, 50<sup>th</sup>, 75<sup>th</sup>, 95<sup>th</sup> percentiles in logarithmic scale.**

<br>
<br>

<a id="figure-1-8"></a>

![](PKAnalysis/13_pk_parameters_t_max.png)

**Figure 1-8: t_max of C1 plasma for single IV administration, children_0_3y, children_3_6y, children_6_9y shown as box-whisker plot, which indicates  the 5<sup>th</sup>, 25<sup>th</sup>, 50<sup>th</sup>, 75<sup>th</sup>, 95<sup>th</sup> percentiles in linear scale.**

<br>
<br>

<a id="table-1-4"></a>

**Table 1-4: Population statistics summarizing t_max of C1 plasma for single IV administration, children_0_3y, children_3_6y, children_6_9y reported in [h]**

|Population               |N  |5<sup>th</sup> pctl |25<sup>th</sup> pctl |50<sup>th</sup> pctl |75<sup>th</sup> pctl |95<sup>th</sup> pctl |Mean |SD |Geo Mean |Geo SD |
|:------------------------|:--|:-------------------|:--------------------|:--------------------|:--------------------|:--------------------|:----|:--|:--------|:------|
|single IV administration |10 |0.05                |0.05                 |0.05                 |0.05                 |0.05                 |0.05 |0  |0.05     |1      |
|children_0_3y            |5  |0.05                |0.05                 |0.05                 |0.05                 |0.05                 |0.05 |0  |0.05     |1      |
|children_3_6y            |5  |0.05                |0.05                 |0.05                 |0.05                 |0.05                 |0.05 |0  |0.05     |1      |
|children_6_9y            |5  |0.05                |0.05                 |0.05                 |0.05                 |0.05                 |0.05 |0  |0.05     |1      |

<br>
<br>

### 1.1.5 Total body clearance/F<a id="14_pk_parameters_organism_peripheralvenousblood_c1_plasma__peripheral_venous_blood__cl"></a>

<a id="figure-1-9"></a>

![](PKAnalysis/15_pk_parameters_CL_log.png)

**Figure 1-9: Total body clearance/F of C1 plasma for single IV administration, children_0_3y, children_3_6y, children_6_9y shown as box-whisker plot, which indicates  the 5<sup>th</sup>, 25<sup>th</sup>, 50<sup>th</sup>, 75<sup>th</sup>, 95<sup>th</sup> percentiles in logarithmic scale.**

<br>
<br>

<a id="figure-1-10"></a>

![](PKAnalysis/16_pk_parameters_CL.png)

**Figure 1-10: Total body clearance/F of C1 plasma for single IV administration, children_0_3y, children_3_6y, children_6_9y shown as box-whisker plot, which indicates  the 5<sup>th</sup>, 25<sup>th</sup>, 50<sup>th</sup>, 75<sup>th</sup>, 95<sup>th</sup> percentiles in linear scale.**

<br>
<br>

<a id="table-1-5"></a>

**Table 1-5: Population statistics summarizing Total body clearance/F of C1 plasma for single IV administration, children_0_3y, children_3_6y, children_6_9y reported in [ml/min/kg]**

|Population               |N  |5<sup>th</sup> pctl |25<sup>th</sup> pctl |50<sup>th</sup> pctl |75<sup>th</sup> pctl |95<sup>th</sup> pctl |Mean |SD   |Geo Mean |Geo SD |
|:------------------------|:--|:-------------------|:--------------------|:--------------------|:--------------------|:--------------------|:----|:----|:--------|:------|
|single IV administration |10 |0.00                |0.00                 |0.01                 |0.01                 |0.01                 |0.01 |0.00 |0.01     |1.87   |
|children_0_3y            |5  |0.00                |0.00                 |0.00                 |0.00                 |0.00                 |0.00 |0.00 |0.00     |1.45   |
|children_3_6y            |5  |0.00                |0.00                 |0.01                 |0.01                 |0.01                 |0.00 |0.00 |0.00     |1.18   |
|children_6_9y            |5  |0.00                |0.00                 |0.00                 |0.00                 |0.00                 |0.00 |0.00 |0.00     |1.20   |

<br>
<br>

### 1.1.6 Vss (plasma)/F<a id="17_pk_parameters_organism_peripheralvenousblood_c1_plasma__peripheral_venous_blood__vss"></a>

<a id="figure-1-11"></a>

![](PKAnalysis/18_pk_parameters_Vss_log.png)

**Figure 1-11: Vss (plasma)/F of C1 plasma for single IV administration, children_0_3y, children_3_6y, children_6_9y shown as box-whisker plot, which indicates  the 5<sup>th</sup>, 25<sup>th</sup>, 50<sup>th</sup>, 75<sup>th</sup>, 95<sup>th</sup> percentiles in logarithmic scale.**

<br>
<br>

<a id="figure-1-12"></a>

![](PKAnalysis/19_pk_parameters_Vss.png)

**Figure 1-12: Vss (plasma)/F of C1 plasma for single IV administration, children_0_3y, children_3_6y, children_6_9y shown as box-whisker plot, which indicates  the 5<sup>th</sup>, 25<sup>th</sup>, 50<sup>th</sup>, 75<sup>th</sup>, 95<sup>th</sup> percentiles in linear scale.**

<br>
<br>

<a id="table-1-6"></a>

**Table 1-6: Population statistics summarizing Vss (plasma)/F of C1 plasma for single IV administration, children_0_3y, children_3_6y, children_6_9y reported in [ml/kg]**

|Population               |N  |5<sup>th</sup> pctl |25<sup>th</sup> pctl |50<sup>th</sup> pctl |75<sup>th</sup> pctl |95<sup>th</sup> pctl |Mean    |SD     |Geo Mean |Geo SD |
|:------------------------|:--|:-------------------|:--------------------|:--------------------|:--------------------|:--------------------|:-------|:------|:--------|:------|
|single IV administration |10 |1819.01             |2163.69              |2446.94              |3208.77              |3393.87              |2596.60 |628.35 |2526.43  |1.28   |
|children_0_3y            |5  |1595.31             |1681.41              |2156.59              |2466.16              |2752.86              |2140.50 |525.87 |2088.68  |1.28   |
|children_3_6y            |5  |1497.40             |1610.20              |2061.71              |2069.03              |2078.95              |1858.31 |295.18 |1838.50  |1.18   |
|children_6_9y            |5  |1517.33             |1529.82              |1595.02              |2005.10              |2316.77              |1807.77 |384.74 |1777.44  |1.22   |

<br>
<br>

# 2 Time profiles and residual plots<a id="time-profiles"></a>

## 2.1 Time profiles and residual plots for single IV administration<a id="time-profiles-single_iv_administration"></a>

<a id="figure-2-1"></a>

![](TimeProfiles/single_IV_administration-3_timeProfile_1_total.png)

**Figure 2-1: Time profiles for single IV administration. Time profiles are plotted in a linear scale.**

<br>
<br>

<a id="figure-2-2"></a>

![](TimeProfiles/single_IV_administration-4_timeProfileLog_2_total.png)

**Figure 2-2: Time profiles for single IV administration. Time profiles are plotted in a logarithmic scale.**

<br>
<br>

## 2.2 Time profiles and residual plots for children_0_3y<a id="time-profiles-children_0_3y"></a>

<a id="figure-2-3"></a>

![](TimeProfiles/children_0_3y-3_timeProfile_1_total.png)

**Figure 2-3: Time profiles for children_0_3y. Time profiles are plotted in a linear scale.**

<br>
<br>

<a id="figure-2-4"></a>

![](TimeProfiles/children_0_3y-4_timeProfileLog_2_total.png)

**Figure 2-4: Time profiles for children_0_3y. Time profiles are plotted in a logarithmic scale.**

<br>
<br>

## 2.3 Time profiles and residual plots for children_3_6y<a id="time-profiles-children_3_6y"></a>

<a id="figure-2-5"></a>

![](TimeProfiles/children_3_6y-3_timeProfile_1_total.png)

**Figure 2-5: Time profiles for children_3_6y. Time profiles are plotted in a linear scale.**

<br>
<br>

<a id="figure-2-6"></a>

![](TimeProfiles/children_3_6y-4_timeProfileLog_2_total.png)

**Figure 2-6: Time profiles for children_3_6y. Time profiles are plotted in a logarithmic scale.**

<br>
<br>

## 2.4 Time profiles and residual plots for children_6_9y<a id="time-profiles-children_6_9y"></a>

<a id="figure-2-7"></a>

![](TimeProfiles/children_6_9y-3_timeProfile_1_total.png)

**Figure 2-7: Time profiles for children_6_9y. Time profiles are plotted in a linear scale.**

<br>
<br>

<a id="figure-2-8"></a>

![](TimeProfiles/children_6_9y-4_timeProfileLog_2_total.png)

**Figure 2-8: Time profiles for children_6_9y. Time profiles are plotted in a logarithmic scale.**

<br>
<br>

