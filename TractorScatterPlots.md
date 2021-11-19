---
title: "ScatterPlots"
output: 
  html_document:
    keep_md: true
---



Tractor & VAM Plots:  
  [Ohio](#ohio-tractor-vam-plots)
  


Note about VAM Plots: Any counties with `N/A` value for VAM were replaced with 0. These are so few that I believe it has minimal effect on the trend lines. 






---

#National Level

## % Farm Tractor 1940 vs 1930
![](TractorScatterPlots_files/figure-html/unnamed-chunk-3-1.png)<!-- -->

## % Farm Tractor 1950 vs 1940
![](TractorScatterPlots_files/figure-html/unnamed-chunk-4-1.png)<!-- -->


## % Farm Tractor 1954 vs 1950
![](TractorScatterPlots_files/figure-html/unnamed-chunk-5-1.png)<!-- -->![](TractorScatterPlots_files/figure-html/unnamed-chunk-5-2.png)<!-- -->![](TractorScatterPlots_files/figure-html/unnamed-chunk-5-3.png)<!-- -->



## % Farm Tractor 1964 vs 1954
![](TractorScatterPlots_files/figure-html/unnamed-chunk-6-1.png)<!-- -->


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#<a id="ohio-tractor-vam-plots"></a>OHIO


```
## Warning in read.dta13("ohio1940.dta"): 
##   bpld:
##   Duplicated factor levels detected - generating unique labels.
```

```
## Warning in read.dta13("ohio1940.dta"): 
##   higrade:
##   Missing factor labels - no labels assigned.
##   Set option generate.factors=T to generate labels.
```

```
## Warning: between() called on numeric vector with S3 class
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-7-1.png)<!-- -->

```
## `geom_smooth()` using method = 'loess' and formula 'y ~ x'
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-7-2.png)<!-- -->

##Transform ohio edu response on Log Scale 
### Ohio Mean Model

![](TractorScatterPlots_files/figure-html/unnamed-chunk-8-1.png)<!-- -->

```
## 
## Call:
## lm(formula = logAvg ~ percent_farm_tractor, data = plotSrc)
## 
## Residuals:
##       Min        1Q    Median        3Q       Max 
## -0.121748 -0.021526  0.008973  0.029746  0.066242 
## 
## Coefficients:
##                      Estimate Std. Error t value Pr(>|t|)    
## (Intercept)          2.280754   0.009254 246.458  < 2e-16 ***
## percent_farm_tractor 0.186915   0.035457   5.272 9.92e-07 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.04027 on 86 degrees of freedom
## Multiple R-squared:  0.2442,	Adjusted R-squared:  0.2354 
## F-statistic: 27.79 on 1 and 86 DF,  p-value: 9.92e-07
```


### Ohio - Median Plots
![](TractorScatterPlots_files/figure-html/unnamed-chunk-9-1.png)<!-- -->![](TractorScatterPlots_files/figure-html/unnamed-chunk-9-2.png)<!-- -->

### Ohio - Median Model

```
## 
## Call:
## lm(formula = logMed ~ percent_farm_tractor, data = plotSrc_med)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -0.23988 -0.01976  0.01381  0.03978  0.09668 
## 
## Coefficients:
##                      Estimate Std. Error t value Pr(>|t|)    
## (Intercept)           2.29588    0.01401 163.899   <2e-16 ***
## percent_farm_tractor  0.24231    0.05367   4.515    2e-05 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.06095 on 86 degrees of freedom
## Multiple R-squared:  0.1916,	Adjusted R-squared:  0.1822 
## F-statistic: 20.38 on 1 and 86 DF,  p-value: 2.002e-05
```

### Ohio Median Model County Residuals

```
##        residual     county
## 1  -0.112959812      ADAMS
## 2   0.047486358      ALLEN
## 3   0.054977761    ASHLAND
## 4   0.046372762  ASHTABULA
## 5   0.085490938     ATHENS
## 6   0.025265991   AUGLAIZE
## 7  -0.011934577    BELMONT
## 8  -0.014356189      BROWN
## 9   0.012412747     BUTLER
## 10 -0.014992712    CARROLL
## 11 -0.058811759  CHAMPAIGN
## 12  0.034005912      CLARK
## 13 -0.026009483   CLERMONT
## 14  0.025047623    CLINTON
## 15  0.067953854 COLUMBIANA
## 16  0.081556658  COSHOCTON
## 17  0.030156259   CRAWFORD
## 18  0.033009156   CUYAHOGA
## 19 -0.063702913      DARKE
## 20  0.005843931   DEFIANCE
## 21  0.047879279   DELAWARE
## 22  0.013541789       ERIE
## 23  0.052254282  FAIRFIELD
## 24 -0.091052632    FAYETTE
## 25  0.028783465   FRANKLIN
## 26  0.022713891     FULTON
## 27 -0.106094148     GALLIA
## 28 -0.054258333     GEAUGA
## 29  0.028379673     GREENE
## 30  0.041666806   GUERNSEY
## 31  0.045707317   HAMILTON
## 32  0.008959789    HANCOCK
## 33  0.035480077     HARDIN
## 34 -0.013590681   HARRISON
## 35 -0.100047890      HENRY
## 36  0.061335824   HIGHLAND
## 37 -0.007908747    HOCKING
## 38 -0.133132918     HOLMES
## 39  0.017162441      HURON
## 40 -0.004124033    JACKSON
## 41 -0.024585427  JEFFERSON
## 42  0.069013115       KNOX
## 43  0.026507948       LAKE
## 44 -0.002983564   LAWRENCE
## 45  0.068379179    LICKING
## 46  0.045047582      LOGAN
## 47  0.010291784     LORAIN
## 48  0.027503513      LUCAS
## 49 -0.075959853    MADISON
## 50  0.040562067   MAHONING
## 51  0.011820089     MARION
## 52  0.034324309     MEDINA
## 53 -0.005313321      MEIGS
## 54 -0.067441037     MERCER
## 55  0.026239927      MIAMI
## 56 -0.107093190     MONROE
## 57  0.018598260 MONTGOMERY
## 58  0.093040307     MORGAN
## 59  0.064601751     MORROW
## 60 -0.013036366  MUSKINGUM
## 61  0.096681182      NOBLE
## 62 -0.003549149     OTTAWA
## 63 -0.099598348   PAULDING
## 64 -0.018867580      PERRY
## 65 -0.084324387   PICKAWAY
## 66 -0.239878392       PIKE
## 67  0.038503011    PORTAGE
## 68  0.020632806     PREBLE
## 69 -0.065773458     PUTNAM
## 70 -0.046237473   RICHLAND
## 71 -0.149859198       ROSS
## 72  0.012926822   SANDUSKY
## 73 -0.022438265     SCIOTO
## 74  0.009379834     SENECA
## 75  0.011881776     SHELBY
## 76  0.039515448      STARK
## 77  0.014084051     SUMMIT
## 78  0.048150217   TRUMBULL
## 79  0.068972682 TUSCARAWAS
## 80  0.043074903      UNION
## 81  0.029974464   VAN WERT
## 82 -0.111503976     VINTON
## 83 -0.059320063     WARREN
## 84 -0.007372566 WASHINGTON
## 85  0.043241264      WAYNE
## 86  0.031597172   WILLIAMS
## 87 -0.014165714       WOOD
## 88  0.034288107    WYANDOT
```

## OH EDU VS % SSE



##Sum of Square error

```
## [1] 1.174032
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-13-1.png)<!-- -->


## VAM 1947 vs % 1940
![](TractorScatterPlots_files/figure-html/unnamed-chunk-14-1.png)<!-- -->

## VAM 1958 vs % 1950

```
## 
## Call:
## lm(formula = vam_ohio1957$VAM ~ ohio1950$percent_farm_tractor)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -569.63 -189.42  -25.26  194.35  616.99 
## 
## Coefficients:
##                               Estimate Std. Error t value Pr(>|t|)   
## (Intercept)                      188.7      119.4   1.581  0.11950   
## ohio1950$percent_farm_tractor    546.8      188.4   2.902  0.00526 **
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 273.3 on 57 degrees of freedom
##   (29 observations deleted due to missingness)
## Multiple R-squared:  0.1288,	Adjusted R-squared:  0.1135 
## F-statistic: 8.424 on 1 and 57 DF,  p-value: 0.005256
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-15-1.png)<!-- -->

## VAM 1947 vs % 1930

```
## 
## Call:
## lm(formula = vam_ohio1947$VAM ~ ohio1930$percent_farm_tractor)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -447.78 -210.40  -43.62  235.08  562.43 
## 
## Coefficients:
##                               Estimate Std. Error t value Pr(>|t|)    
## (Intercept)                     214.00      62.37   3.431 0.000959 ***
## ohio1930$percent_farm_tractor   827.97     240.82   3.438 0.000938 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 269.5 on 79 degrees of freedom
##   (7 observations deleted due to missingness)
## Multiple R-squared:  0.1302,	Adjusted R-squared:  0.1191 
## F-statistic: 11.82 on 1 and 79 DF,  p-value: 0.0009376
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-16-1.png)<!-- -->

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


```
## Warning in read.dta13("cen1940A.dta"): 
##   bpld:
##   Duplicated factor levels detected - generating unique labels.
```

```
## Warning in read.dta13("cen1940A.dta"): 
##   higrade:
##   Missing factor labels - no labels assigned.
##   Set option generate.factors=T to generate labels.
```


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#MICHIGAN

```
## [1] "use `stateicp` as locations\nage between 18,22\nhigrade < 20"
```

```
## Warning: between() called on numeric vector with S3 class
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-18-1.png)<!-- -->

```
## `geom_smooth()` using method = 'loess' and formula 'y ~ x'
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-18-2.png)<!-- -->


#Transform response on Log Scale
![](TractorScatterPlots_files/figure-html/unnamed-chunk-19-1.png)<!-- -->

```
## 
## Call:
## lm(formula = logAvg ~ percent_farm_tractor, data = michPlotSrc)
## 
## Residuals:
##       Min        1Q    Median        3Q       Max 
## -0.219400 -0.036979  0.000761  0.041468  0.100975 
## 
## Coefficients:
##                      Estimate Std. Error t value Pr(>|t|)    
## (Intercept)           2.25242    0.01312 171.704   <2e-16 ***
## percent_farm_tractor  0.17868    0.07160   2.496   0.0146 *  
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.05275 on 81 degrees of freedom
## Multiple R-squared:  0.07139,	Adjusted R-squared:  0.05993 
## F-statistic: 6.228 on 1 and 81 DF,  p-value: 0.01461
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-19-2.png)<!-- -->

#Michigan - Median

```
## Warning: between() called on numeric vector with S3 class
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-20-1.png)<!-- -->![](TractorScatterPlots_files/figure-html/unnamed-chunk-20-2.png)<!-- -->

### Michigan - Median Model

```
## 
## Call:
## lm(formula = logMed ~ percent_farm_tractor, data = plotSrc_med_mich)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -0.25098 -0.06656  0.02238  0.05473  0.14252 
## 
## Coefficients:
##                      Estimate Std. Error t value Pr(>|t|)    
## (Intercept)           2.23574    0.02284  97.892  < 2e-16 ***
## percent_farm_tractor  0.33943    0.12465   2.723  0.00792 ** 
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.09184 on 81 degrees of freedom
## Multiple R-squared:  0.08386,	Adjusted R-squared:  0.07255 
## F-statistic: 7.415 on 1 and 81 DF,  p-value: 0.007921
```

### Michigan Median Model County Residuals

```
##        residual            county
## 1  -0.187275178            ALCONA
## 2  -0.085014801             ALGER
## 3   0.008819658           ALLEGAN
## 4  -0.079919458            ALPENA
## 5  -0.077488032            ANTRIM
## 6  -0.200353056            ARENAC
## 7   0.025425850            BARAGA
## 8   0.110906381             BARRY
## 9  -0.012837076               BAY
## 10  0.031026497            BENZIE
## 11  0.107743596           BERRIEN
## 12  0.008707873            BRANCH
## 13  0.111953523           CALHOUN
## 14  0.120925711              CASS
## 15  0.036165627        CHARLEVOIX
## 16 -0.065297665         CHEBOYGAN
## 17  0.020599745          CHIPPEWA
## 18  0.033014005             CLARE
## 19 -0.042063207           CLINTON
## 20  0.014172802          CRAWFORD
## 21  0.012887339             DELTA
## 22  0.101942375         DICKINSON
## 23  0.072106438             EATON
## 24 -0.066056828             EMMET
## 25  0.055198261           GENESEE
## 26 -0.069792934           GLADWIN
## 27  0.142516707           GOGEBIC
## 28  0.011545445    GRAND TRAVERSE
## 29 -0.032579808           GRATIOT
## 30  0.100856541         HILLSDALE
## 31  0.039725469          HOUGHTON
## 32 -0.250981531             HURON
## 33  0.068038995            INGHAM
## 34 -0.128137603             IONIA
## 35  0.027636661             IOSCO
## 36  0.130371319              IRON
## 37 -0.101475239          ISABELLA
## 38  0.105659303           JACKSON
## 39  0.100879266         KALAMAZOO
## 40 -0.075924113          KALKASKA
## 41  0.104813894              KENT
## 42 -0.169611558          KEWEENAW
## 43  0.046514135              LAKE
## 44 -0.216084187            LAPEER
## 45 -0.075546269          LEELANAU
## 46  0.044995306           LENAWEE
## 47  0.076575847        LIVINGSTON
## 48 -0.001805789              LUCE
## 49 -0.093317083 MACKINAC/MICHILIM
## 50  0.061968971            MACOMB
## 51  0.039619066          MANISTEE
## 52  0.126050759         MARQUETTE
## 53  0.116743765             MASON
## 54  0.040682349           MECOSTA
## 55  0.025128222         MENOMINEE
## 56 -0.004886346           MIDLAND
## 57 -0.183214337         MISSAUKEE
## 58 -0.032406605            MONROE
## 59  0.024902446          MONTCALM
## 60  0.022383630       MONTMORENCY
## 61  0.114975307          MUSKEGON
## 62 -0.020210397           NEWAYGO
## 63  0.051362076           OAKLAND
## 64  0.027366523            OCEANA
## 65 -0.069876049            OGEMAW
## 66 -0.080123158         ONTONAGON
## 67  0.048305016           OSCEOLA
## 68 -0.010300206            OSCODA
## 69 -0.067060519            OTSEGO
## 70  0.025111206            OTTAWA
## 71 -0.192049448      PRESQUE ISLE
## 72  0.032899974         ROSCOMMON
## 73 -0.040745153           SAGINAW
## 74 -0.013826630          ST CLAIR
## 75  0.117125263         ST JOSEPH
## 76 -0.103298228           SANILAC
## 77  0.014549838       SCHOOLCRAFT
## 78 -0.043640768        SHIAWASSEE
## 79 -0.134888560           TUSCOLA
## 80  0.119313235         VAN BUREN
## 81  0.054252119         WASHTENAW
## 82  0.045686965             WAYNE
## 83  0.047936516           WEXFORD
```




#SCATTER DIAGRAM AND REGRESSION FOR MICHIGAN VAM VS EDU
![](TractorScatterPlots_files/figure-html/unnamed-chunk-23-1.png)<!-- -->

```
##    county      avg year state   name percent_farm_tractor stateAbb  fips
## 44    870 7.881265 1930    26 LAPEER            0.1761294       MI 26087
##    colorID   logAvg   modResid   fitted
## 44       3 2.064488 -0.2194003 2.283889
```


## MI EDU VS % SSE

```
## [1] 1.276815
```

## VAM 1958 vs % 1950

```
## 
## Call:
## lm(formula = vam_mich1957$VAM ~ mich1950$percent_farm_tractor)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -365.46 -196.66  -25.15  184.44  503.44 
## 
## Coefficients:
##                               Estimate Std. Error t value Pr(>|t|)
## (Intercept)                      243.3      202.0   1.204    0.233
## mich1950$percent_farm_tractor    140.9      297.2   0.474    0.637
## 
## Residual standard error: 241.4 on 62 degrees of freedom
##   (19 observations deleted due to missingness)
## Multiple R-squared:  0.003611,	Adjusted R-squared:  -0.01246 
## F-statistic: 0.2247 on 1 and 62 DF,  p-value: 0.6372
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-25-1.png)<!-- -->

## VAM 1947 vs % 1930

```
## 
## Call:
## lm(formula = vam_mich1947$VAM ~ mich1930$percent_farm_tractor)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -427.69 -191.52   -8.99  126.28  552.66 
## 
## Coefficients:
##                               Estimate Std. Error t value Pr(>|t|)    
## (Intercept)                      71.76      62.43    1.15    0.254    
## mich1930$percent_farm_tractor  1542.55     349.03    4.42 3.24e-05 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 243.3 on 76 degrees of freedom
##   (5 observations deleted due to missingness)
## Multiple R-squared:  0.2045,	Adjusted R-squared:  0.194 
## F-statistic: 19.53 on 1 and 76 DF,  p-value: 3.24e-05
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-26-1.png)<!-- -->

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#WISCONSIN


```
## Warning: between() called on numeric vector with S3 class
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-27-1.png)<!-- -->![](TractorScatterPlots_files/figure-html/unnamed-chunk-27-2.png)<!-- -->

```
## `geom_smooth()` using method = 'loess' and formula 'y ~ x'
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-27-3.png)<!-- -->![](TractorScatterPlots_files/figure-html/unnamed-chunk-27-4.png)<!-- -->

```
## 
## Call:
## lm(formula = logAvg ~ percent_farm_tractor, data = wisPlotSrc)
## 
## Residuals:
##       Min        1Q    Median        3Q       Max 
## -0.083969 -0.025500 -0.000201  0.020619  0.092817 
## 
## Coefficients:
##                      Estimate Std. Error t value Pr(>|t|)    
## (Intercept)          2.265011   0.009967 227.256  < 2e-16 ***
## percent_farm_tractor 0.100321   0.035121   2.856  0.00566 ** 
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.03962 on 69 degrees of freedom
## Multiple R-squared:  0.1057,	Adjusted R-squared:  0.09279 
## F-statistic: 8.159 on 1 and 69 DF,  p-value: 0.005656
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-27-5.png)<!-- -->

```
## Warning in `[<-.factor`(`*tmp*`, thisvar, value = 0): invalid factor level, NA
## generated
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-27-6.png)<!-- -->


## WI EDU VS % SSE

```
## [1] 1.164601
```


## VAM 1958 vs % 1950

```
## 
## Call:
## lm(formula = vam_wis1957$VAM ~ wis1950$percent_farm_tractor)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -333.26 -192.11  -27.48  103.04  676.52 
## 
## Coefficients:
##                              Estimate Std. Error t value Pr(>|t|)
## (Intercept)                    -2.341    237.072  -0.010    0.992
## wis1950$percent_farm_tractor  497.488    326.784   1.522    0.134
## 
## Residual standard error: 251.5 on 54 degrees of freedom
##   (15 observations deleted due to missingness)
## Multiple R-squared:  0.04115,	Adjusted R-squared:  0.0234 
## F-statistic: 2.318 on 1 and 54 DF,  p-value: 0.1337
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-29-1.png)<!-- -->

## VAM 1947 vs % 1930

```
## 
## Call:
## lm(formula = vam_wis1947$VAM ~ wis1930$percent_farm_tractor)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -484.24 -152.21  -90.96  135.29  674.42 
## 
## Coefficients:
##                              Estimate Std. Error t value Pr(>|t|)    
## (Intercept)                     55.46      62.58   0.886    0.379    
## wis1930$percent_farm_tractor  1046.06     228.27   4.583  2.1e-05 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 243.9 on 66 degrees of freedom
##   (3 observations deleted due to missingness)
## Multiple R-squared:  0.2414,	Adjusted R-squared:  0.2299 
## F-statistic:    21 on 1 and 66 DF,  p-value: 2.098e-05
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-30-1.png)<!-- -->

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# INDIANA

```
## Warning: between() called on numeric vector with S3 class
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-31-1.png)<!-- -->

```
## `geom_smooth()` using method = 'loess' and formula 'y ~ x'
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-31-2.png)<!-- -->


#Transform response on Log Scale
![](TractorScatterPlots_files/figure-html/unnamed-chunk-32-1.png)<!-- -->

```
## 
## Call:
## lm(formula = logAvg ~ percent_farm_tractor, data = inPlotSrc)
## 
## Residuals:
##       Min        1Q    Median        3Q       Max 
## -0.128838 -0.020547  0.000339  0.027807  0.068493 
## 
## Coefficients:
##                      Estimate Std. Error t value Pr(>|t|)    
## (Intercept)          2.271406   0.009384 242.049  < 2e-16 ***
## percent_farm_tractor 0.243673   0.038546   6.322 9.74e-09 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.03588 on 90 degrees of freedom
## Multiple R-squared:  0.3075,	Adjusted R-squared:  0.2998 
## F-statistic: 39.96 on 1 and 90 DF,  p-value: 9.74e-09
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-32-2.png)<!-- -->

#SCATTER DIAGRAM AND REGRESSION FOR Indiana VAM VS EDU

```
## Warning in `[<-.factor`(`*tmp*`, thisvar, value = 0): invalid factor level, NA
## generated
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-33-1.png)<!-- -->

#Indiana - Median

```
## Warning: between() called on numeric vector with S3 class
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-34-1.png)<!-- -->![](TractorScatterPlots_files/figure-html/unnamed-chunk-34-2.png)<!-- -->



### Indiana - Median Model

```
## 
## Call:
## lm(formula = logMed ~ percent_farm_tractor, data = plotSrc_med_in)
## 
## Residuals:
##       Min        1Q    Median        3Q       Max 
## -0.217651 -0.021463 -0.000837  0.035208  0.135319 
## 
## Coefficients:
##                      Estimate Std. Error t value Pr(>|t|)    
## (Intercept)           2.27671    0.01582   143.9  < 2e-16 ***
## percent_farm_tractor  0.38349    0.06500     5.9  6.3e-08 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.0605 on 90 degrees of freedom
## Multiple R-squared:  0.2789,	Adjusted R-squared:  0.2709 
## F-statistic: 34.81 on 1 and 90 DF,  p-value: 6.296e-08
```


### Indiana Median Model County Residuals

```
##         residual      county
## 1  -0.0039011654       ADAMS
## 2  -0.0045533470       ALLEN
## 3   0.0485600175 BARTHOLOMEW
## 4  -0.0556421083      BENTON
## 5   0.0397637243   BLACKFORD
## 6   0.0172311300       BOONE
## 7  -0.0974781526       BROWN
## 8  -0.0349227644     CARROLL
## 9   0.0353692131        CASS
## 10 -0.0304488200       CLARK
## 11  0.0702713112        CLAY
## 12 -0.0050793908     CLINTON
## 13 -0.2176513073    CRAWFORD
## 14 -0.0297271964     DAVIESS
## 15 -0.0268200706    DEARBORN
## 16 -0.0124768965     DECATUR
## 17  0.0184916342     DE KALB
## 18  0.0351542336    DELAWARE
## 19 -0.1312904249      DUBOIS
## 20  0.0608813534     ELKHART
## 21 -0.1196820773     FAYETTE
## 22 -0.0241780504       FLOYD
## 23  0.0115811945    FOUNTAIN
## 24 -0.1688033073    FRANKLIN
## 25  0.0746289970      FULTON
## 26  0.0253089310      GIBSON
## 27 -0.0007629611       GRANT
## 28  0.0866655157      GREENE
## 29 -0.0014830516    HAMILTON
## 30  0.0116994290     HANCOCK
## 31 -0.0128748566    HARRISON
## 32  0.0177421484   HENDRICKS
## 33  0.0178206224       HENRY
## 34 -0.0025762048      HOWARD
## 35  0.1042119985  HUNTINGTON
## 36 -0.0313739026     JACKSON
## 37  0.0069599110      JASPER
## 38  0.0473013013         JAY
## 39 -0.0122367435   JEFFERSON
## 40 -0.0157585697    JENNINGS
## 41 -0.0086250188     JOHNSON
## 42  0.0122629645        KNOX
## 43  0.0662756138   KOSCIUSKO
## 44 -0.0317447280    LAGRANGE
## 45 -0.0050625322        LAKE
## 46  0.0047870347    LA PORTE
## 47 -0.0144954635    LAWRENCE
## 48  0.0113978554     MADISON
## 49  0.0066256475      MARION
## 50  0.0609437234    MARSHALL
## 51 -0.0171457002      MARTIN
## 52  0.0190393905       MIAMI
## 53 -0.0009467869      MONROE
## 54  0.0065750034  MONTGOMERY
## 55  0.0373660608      MORGAN
## 56 -0.0211253141      NEWTON
## 57  0.0415637340       NOBLE
## 58  0.0745590830        OHIO
## 59 -0.0223773748      ORANGE
## 60  0.0909766279        OWEN
## 61  0.0448138997       PARKE
## 62 -0.1093545276       PERRY
## 63 -0.0145292159        PIKE
## 64  0.0201064860      PORTER
## 65 -0.1790683618       POSEY
## 66 -0.0667393709     PULASKI
## 67  0.0619769431      PUTNAM
## 68  0.0232313852    RANDOLPH
## 69 -0.0342631411      RIPLEY
## 70 -0.0356922635        RUSH
## 71  0.0262023096   ST JOSEPH
## 72 -0.0171502153       SCOTT
## 73  0.0008867328      SHELBY
## 74 -0.0079500668     SPENCER
## 75 -0.0655714442      STARKE
## 76  0.1309497809     STEUBEN
## 77  0.0687769074    SULLIVAN
## 78 -0.1054192161 SWITZERLAND
## 79 -0.0023580977  TIPPECANOE
## 80  0.0011144066      TIPTON
## 81 -0.0256990445       UNION
## 82  0.0413615048 VANDERBURGH
## 83  0.0276761811  VERMILLION
## 84  0.0607328271        VIGO
## 85  0.0055664474      WABASH
## 86 -0.0211584038      WARREN
## 87 -0.0186099550     WARRICK
## 88 -0.0263503943  WASHINGTON
## 89 -0.0009102887       WAYNE
## 90  0.0916333530       WELLS
## 91 -0.0102948964       WHITE
## 92  0.1353186218     WHITLEY
```
## IN EDU VS % SSE

```
## [1] 1.13942
```

## VAM 1958 vs % 1950

```
## 
## Call:
## lm(formula = vam_in1957$VAM ~ in1950$percent_farm_tractor)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -450.65 -242.12  -46.76  201.85  583.08 
## 
## Coefficients:
##                             Estimate Std. Error t value Pr(>|t|)
## (Intercept)                    142.0      173.0   0.821    0.415
## in1950$percent_farm_tractor    395.2      269.2   1.468    0.147
## 
## Residual standard error: 289 on 69 degrees of freedom
##   (21 observations deleted due to missingness)
## Multiple R-squared:  0.03028,	Adjusted R-squared:  0.01623 
## F-statistic: 2.155 on 1 and 69 DF,  p-value: 0.1467
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-38-1.png)<!-- -->

## VAM 1947 vs % 1930

```
## 
## Call:
## lm(formula = vam_in1947$VAM ~ in1930$percent_farm_tractor)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -325.84 -212.46  -97.32  134.94  702.92 
## 
## Coefficients:
##                             Estimate Std. Error t value Pr(>|t|)   
## (Intercept)                   244.49      72.15   3.389  0.00108 **
## in1930$percent_farm_tractor   232.64     303.97   0.765  0.44627   
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 269.6 on 82 degrees of freedom
##   (8 observations deleted due to missingness)
## Multiple R-squared:  0.007092,	Adjusted R-squared:  -0.005016 
## F-statistic: 0.5857 on 1 and 82 DF,  p-value: 0.4463
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-39-1.png)<!-- -->
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Illinois


```
## Warning: between() called on numeric vector with S3 class

## Warning: between() called on numeric vector with S3 class
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-40-1.png)<!-- -->![](TractorScatterPlots_files/figure-html/unnamed-chunk-40-2.png)<!-- -->
#LOESS REGRESSION on EDU vs % Tractor

```
## `geom_smooth()` using method = 'loess' and formula 'y ~ x'
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-41-1.png)<!-- -->

#Transform response on Log Scale
![](TractorScatterPlots_files/figure-html/unnamed-chunk-42-1.png)<!-- -->

```
## 
## Call:
## lm(formula = logAvg ~ percent_farm_tractor, data = ilPlotSrc)
## 
## Residuals:
##       Min        1Q    Median        3Q       Max 
## -0.228625 -0.017533  0.009969  0.029582  0.071982 
## 
## Coefficients:
##                      Estimate Std. Error t value Pr(>|t|)    
## (Intercept)           2.22397    0.01067 208.505  < 2e-16 ***
## percent_farm_tractor  0.22051    0.03129   7.047 2.39e-10 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.04953 on 100 degrees of freedom
## Multiple R-squared:  0.3318,	Adjusted R-squared:  0.3251 
## F-statistic: 49.66 on 1 and 100 DF,  p-value: 2.385e-10
```

#Residuals - Mean Model
![](TractorScatterPlots_files/figure-html/unnamed-chunk-43-1.png)<!-- -->


#SCATTER DIAGRAM AND REGRESSION FOR Illinois VAM VS EDU

```
## Warning in `[<-.factor`(`*tmp*`, thisvar, value = 0): invalid factor level, NA
## generated
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-44-1.png)<!-- -->

#Illinois - Median

```
## Warning: between() called on numeric vector with S3 class
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-45-1.png)<!-- -->![](TractorScatterPlots_files/figure-html/unnamed-chunk-45-2.png)<!-- -->






### Illinois - Median Model

```
## 
## Call:
## lm(formula = logMed ~ percent_farm_tractor, data = plotSrc_med_il)
## 
## Residuals:
##       Min        1Q    Median        3Q       Max 
## -0.249730 -0.045203  0.009157  0.059213  0.177344 
## 
## Coefficients:
##                      Estimate Std. Error t value Pr(>|t|)    
## (Intercept)           2.18273    0.01665 131.079  < 2e-16 ***
## percent_farm_tractor  0.40905    0.04885   8.373 3.56e-13 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.07732 on 100 degrees of freedom
## Multiple R-squared:  0.4121,	Adjusted R-squared:  0.4063 
## F-statistic: 70.11 on 1 and 100 DF,  p-value: 3.56e-13
```

### Illinois Median Model County Residuals

```
##          residual      county
## 1    0.1159811021       ADAMS
## 2   -0.0219127354   ALEXANDER
## 3    0.0624933542        BOND
## 4   -0.0654303756       BOONE
## 5   -0.0574486943       BROWN
## 6    0.0242888950      BUREAU
## 7   -0.1739178024     CALHOUN
## 8    0.0087382195     CARROLL
## 9    0.0886314774        CASS
## 10   0.0685975463   CHAMPAIGN
## 11   0.0418905544   CHRISTIAN
## 12   0.0611637588       CLARK
## 13   0.0786393457        CLAY
## 14  -0.1803182776     CLINTON
## 15  -0.0684271244       COLES
## 16   0.0623256695        COOK
## 17   0.0456704740    CRAWFORD
## 18  -0.0679222565  CUMBERLAND
## 19   0.0003174398     DE KALB
## 20   0.0369388999     DE WITT
## 21  -0.0121108973     DOUGLAS
## 22   0.0011764439     DU PAGE
## 23  -0.0412973841       EDGAR
## 24   0.1528184335     EDWARDS
## 25   0.0628052418   EFFINGHAM
## 26  -0.0263809189     FAYETTE
## 27  -0.0386041590        FORD
## 28   0.0898362723    FRANKLIN
## 29   0.0884042556      FULTON
## 30  -0.1466355434    GALLATIN
## 31   0.0047574633      GREENE
## 32  -0.0950695919      GRUNDY
## 33  -0.1158571443    HAMILTON
## 34   0.1001316688     HANCOCK
## 35  -0.1132479844      HARDIN
## 36  -0.0219548279   HENDERSON
## 37   0.0420705665       HENRY
## 38  -0.0425400636    IROQUOIS
## 39   0.0372132464     JACKSON
## 40  -0.0460045118      JASPER
## 41  -0.0043966604   JEFFERSON
## 42  -0.0803185571      JERSEY
## 43   0.0003591042  JO DAVIESS
## 44  -0.0141440802     JOHNSON
## 45  -0.0135144444        KANE
## 46  -0.0472771443    KANKAKEE
## 47  -0.0259537624     KENDALL
## 48   0.0643324148        KNOX
## 49   0.0383327769        LAKE
## 50  -0.0812555084    LA SALLE
## 51   0.0350188042    LAWRENCE
## 52  -0.0578001067         LEE
## 53  -0.1113619253  LIVINGSTON
## 54  -0.0888060358       LOGAN
## 55   0.0665464003   MCDONOUGH
## 56   0.0518321475     MCHENRY
## 57   0.0181006265      MCLEAN
## 58   0.0459426482       MACON
## 59   0.0181559531    MACOUPIN
## 60   0.1161359591     MADISON
## 61   0.1773444851      MARION
## 62   0.0183762184    MARSHALL
## 63  -0.0209660543       MASON
## 64  -0.1304346238      MASSAC
## 65  -0.0118754277      MENARD
## 66   0.0700801133      MERCER
## 67  -0.2497303150      MONROE
## 68   0.0308361603  MONTGOMERY
## 69  -0.0019366361      MORGAN
## 70  -0.0427986618    MOULTRIE
## 71   0.0526453814        OGLE
## 72   0.0796242229      PEORIA
## 73  -0.0378438141       PERRY
## 74  -0.0068854448       PIATT
## 75   0.0363154089        PIKE
## 76  -0.1222652841        POPE
## 77  -0.0226174880     PULASKI
## 78  -0.0952511555      PUTNAM
## 79  -0.0634426356    RANDOLPH
## 80   0.0682259564    RICHLAND
## 81   0.0668327657 ROCK ISLAND
## 82   0.0123034269    ST CLAIR
## 83   0.0920240633      SALINE
## 84   0.0860022708    SANGAMON
## 85   0.0215368204    SCHUYLER
## 86  -0.0224760426       SCOTT
## 87   0.0249810386      SHELBY
## 88   0.0324385486       STARK
## 89   0.0598519133  STEPHENSON
## 90   0.0399708018    TAZEWELL
## 91  -0.0599806613       UNION
## 92   0.0572966517   VERMILION
## 93   0.1091509767      WABASH
## 94   0.0406126587      WARREN
## 95  -0.1551419151  WASHINGTON
## 96  -0.1299853400       WAYNE
## 97   0.0551008245       WHITE
## 98  -0.0288185389   WHITESIDE
## 99  -0.0702678619        WILL
## 100  0.0871343160  WILLIAMSON
## 101  0.0747176896   WINNEBAGO
## 102  0.0095765416    WOODFORD
```


## IL EDU VS % SSE

```
## [1] 1.239245
```


## VAM 1958 vs % 1950

```
## 
## Call:
## lm(formula = vam_il1957$VAM ~ il1950$percent_farm_tractor)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -360.14 -182.35  -65.27  114.67  678.66 
## 
## Coefficients:
##                             Estimate Std. Error t value Pr(>|t|)  
## (Intercept)                    -37.6      133.4  -0.282   0.7787  
## il1950$percent_farm_tractor    455.0      186.6   2.438   0.0169 *
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 254.5 on 82 degrees of freedom
##   (18 observations deleted due to missingness)
## Multiple R-squared:  0.06759,	Adjusted R-squared:  0.05622 
## F-statistic: 5.944 on 1 and 82 DF,  p-value: 0.01693
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-49-1.png)<!-- -->

## VAM 1947 vs % 1930

```
## 
## Call:
## lm(formula = il_vam$VAM ~ il1930$percent_farm_tractor)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -360.67 -162.22  -84.38  119.71  713.75 
## 
## Coefficients:
##                             Estimate Std. Error t value Pr(>|t|)   
## (Intercept)                    90.09      52.08   1.730  0.08673 . 
## il1930$percent_farm_tractor   436.14     152.79   2.855  0.00524 **
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 241.8 on 100 degrees of freedom
## Multiple R-squared:  0.07535,	Adjusted R-squared:  0.0661 
## F-statistic: 8.149 on 1 and 100 DF,  p-value: 0.00524
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-50-1.png)<!-- -->

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#IOWA


```
## Warning: between() called on numeric vector with S3 class
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-51-1.png)<!-- -->

#LOESS REGRESSION on EDU vs % Tractor

```
## `geom_smooth()` using method = 'loess' and formula 'y ~ x'
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-52-1.png)<!-- -->![](TractorScatterPlots_files/figure-html/unnamed-chunk-52-2.png)<!-- -->

```
## 
## Call:
## lm(formula = logAvg ~ percent_farm_tractor, data = iaPlotSrc)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -0.07421 -0.02169  0.00363  0.02606  0.07078 
## 
## Coefficients:
##                      Estimate Std. Error t value Pr(>|t|)    
## (Intercept)           2.30712    0.01167 197.644   <2e-16 ***
## percent_farm_tractor  0.09378    0.03806   2.464   0.0155 *  
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.03359 on 97 degrees of freedom
## Multiple R-squared:  0.05892,	Adjusted R-squared:  0.04922 
## F-statistic: 6.073 on 1 and 97 DF,  p-value: 0.01548
```

#Residuals
![](TractorScatterPlots_files/figure-html/unnamed-chunk-53-1.png)<!-- -->

#SCATTER DIAGRAM AND REGRESSION FOR Indiana VAM VS EDU
![](TractorScatterPlots_files/figure-html/unnamed-chunk-54-1.png)<!-- -->

## IA EDU VS % Sum of Squares Error

```
## [1] 1.128052
```

## VAM 1958 vs % 1950

```
## 
## Call:
## lm(formula = vam_ia1957$VAM ~ ia1950$percent_farm_tractor)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -186.93 -116.61  -54.65   28.86  770.95 
## 
## Coefficients:
##                             Estimate Std. Error t value Pr(>|t|)
## (Intercept)                   -132.8      197.6  -0.672    0.503
## ia1950$percent_farm_tractor    384.9      249.0   1.546    0.126
## 
## Residual standard error: 190 on 86 degrees of freedom
##   (11 observations deleted due to missingness)
## Multiple R-squared:  0.02703,	Adjusted R-squared:  0.01572 
## F-statistic: 2.389 on 1 and 86 DF,  p-value: 0.1258
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-56-1.png)<!-- -->

## VAM 1947 vs % 1930

```
## 
## Call:
## lm(formula = ia_vam$VAM ~ ia1930$percent_farm_tractor)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -132.30 -105.02  -80.41   -4.50  797.25 
## 
## Coefficients:
##                             Estimate Std. Error t value Pr(>|t|)
## (Intercept)                    97.02      66.75   1.454    0.149
## ia1930$percent_farm_tractor    98.86     217.61   0.454    0.651
## 
## Residual standard error: 192.1 on 97 degrees of freedom
## Multiple R-squared:  0.002123,	Adjusted R-squared:  -0.008164 
## F-statistic: 0.2064 on 1 and 97 DF,  p-value: 0.6506
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-57-1.png)<!-- -->

#Iowa - Median

```
## Warning: between() called on numeric vector with S3 class
```

![](TractorScatterPlots_files/figure-html/unnamed-chunk-58-1.png)<!-- -->![](TractorScatterPlots_files/figure-html/unnamed-chunk-58-2.png)<!-- -->

### Iowa - Median Model

```
## 
## Call:
## lm(formula = logMed ~ percent_farm_tractor, data = plotSrc_med_ia)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -0.17834 -0.02710  0.01407  0.02660  0.12513 
## 
## Coefficients:
##                      Estimate Std. Error t value Pr(>|t|)    
## (Intercept)           2.33110    0.02033 114.680   <2e-16 ***
## percent_farm_tractor  0.15680    0.06627   2.366     0.02 *  
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.05849 on 97 degrees of freedom
## Multiple R-squared:  0.05457,	Adjusted R-squared:  0.04482 
## F-statistic: 5.599 on 1 and 97 DF,  p-value: 0.01996
```

### Iowa Median Model County Residuals

```
##         residual        county
## 1  -0.0698771308         ADAIR
## 2  -0.0626695952         ADAMS
## 3  -0.0577524624     ALLAMAKEE
## 4  -0.0425195858     APPANOOSE
## 5  -0.0703218871       AUDUBON
## 6   0.0135565295        BENTON
## 7   0.0168034522    BLACK HAWK
## 8   0.0183828271         BOONE
## 9   0.0166698887        BREMER
## 10  0.0393247618      BUCHANAN
## 11  0.0876183606   BUENA VISTA
## 12 -0.0639751372        BUTLER
## 13  0.0068539027       CALHOUN
## 14 -0.0807633513       CARROLL
## 15  0.0240589330          CASS
## 16  0.0178388902         CEDAR
## 17  0.0205481719   CERRO GORDO
## 18  0.0012142122      CHEROKEE
## 19 -0.0586279740     CHICKASAW
## 20  0.0326358223        CLARKE
## 21  0.0875095949          CLAY
## 22 -0.0779393929       CLAYTON
## 23  0.0130968125       CLINTON
## 24 -0.0896821411      CRAWFORD
## 25  0.0067905428        DALLAS
## 26 -0.0489229649         DAVIS
## 27  0.0487135367       DECATUR
## 28 -0.0626068575      DELAWARE
## 29  0.0167590460    DES MOINES
## 30  0.0142671137     DICKINSON
## 31 -0.0653086956       DUBUQUE
## 32  0.0084627390         EMMET
## 33  0.0379903618       FAYETTE
## 34  0.0193618671         FLOYD
## 35  0.0102304642      FRANKLIN
## 36  0.0313653750       FREMONT
## 37  0.0089974723        GREENE
## 38  0.0144647967        GRUNDY
## 39  0.0279032762       GUTHRIE
## 40  0.0021000562      HAMILTON
## 41 -0.0890211419       HANCOCK
## 42  0.0154828035        HARDIN
## 43  0.0202798136      HARRISON
## 44  0.0247915724         HENRY
## 45 -0.0648661216        HOWARD
## 46  0.0007743202      HUMBOLDT
## 47  0.0078110812           IDA
## 48  0.0084270726          IOWA
## 49 -0.1111447334       JACKSON
## 50  0.0226355695        JASPER
## 51  0.0375409642     JEFFERSON
## 52  0.0178091783       JOHNSON
## 53 -0.0669817399         JONES
## 54  0.0338417038        KEOKUK
## 55 -0.0001827888       KOSSUTH
## 56  0.0275708975           LEE
## 57  0.1251309801          LINN
## 58  0.0104525307        LOUISA
## 59  0.0466248762         LUCAS
## 60 -0.1783359639 LYON/BUNCOMBE
## 61  0.0256228815       MADISON
## 62 -0.0621280035       MAHASKA
## 63 -0.0591260627        MARION
## 64  0.0109899381      MARSHALL
## 65  0.0186983518         MILLS
## 66  0.0217683251      MITCHELL
## 67  0.0002400920        MONONA
## 68  0.0518968927        MONROE
## 69  0.1055478112    MONTGOMERY
## 70 -0.0777806925     MUSCATINE
## 71  0.0042294249       O BRIEN
## 72 -0.0844676618       OSCEOLA
## 73  0.0227912237          PAGE
## 74  0.0126635703     PALO ALTO
## 75 -0.0917707364      PLYMOUTH
## 76 -0.0116855854    POCAHONTAS
## 77  0.1114975678          POLK
## 78  0.0099677272 POTTAWATTAMIE
## 79  0.0967193630     POWESHIEK
## 80  0.0373701459      RINGGOLD
## 81  0.0026975988           SAC
## 82  0.0035293703         SCOTT
## 83  0.0146905446        SHELBY
## 84 -0.1742005144         SIOUX
## 85  0.1005775055         STORY
## 86  0.0161494265          TAMA
## 87  0.0400091263        TAYLOR
## 88  0.0384390773         UNION
## 89  0.0414439818     VAN BUREN
## 90  0.0353212688       WAPELLO
## 91  0.1232005205        WARREN
## 92  0.0191529246    WASHINGTON
## 93  0.0420458200         WAYNE
## 94 -0.0061101406       WEBSTER
## 95  0.0212120364     WINNEBAGO
## 96 -0.1694246938    WINNESHIEK
## 97  0.0140698129      WOODBURY
## 98  0.0144878191         WORTH
## 99 -0.0015285639        WRIGHT
```

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

