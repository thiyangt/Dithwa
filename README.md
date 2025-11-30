
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Ditwah

<!-- badges: start -->

<!-- badges: end -->

The Dithwa storm that hit Sri Lanka on November 28, 2025, led to this
package, which focuses on data, monitoring, and early warning.

## Installation

You can install the development version of Ditwah from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("thiyangt/Ditwah")
```

## Load Data 3 Hour Weather Data

``` r
library(Ditwah)
head(ditwah_3hr_weather_data)
#>   Station_ID      Station_Name         Report_Time Rainfall_mm Temperature_C
#> 1      43404            JAFFNA 2025-11-28 08:30:00        32.0          24.0
#> 2      43413            MANNAR 2025-11-28 08:30:00       103.4          24.3
#> 3      43415          VAVUNIYA 2025-11-28 08:30:00       358.5          23.8
#> 4      43418       TRINCOMALEE 2025-11-28 08:30:00       261.5          24.6
#> 5      43421      ANURADHAPURA 2025-11-28 08:30:00       331.0          21.4
#> 6      43422 MAHA ILLUPPALLAMA 2025-11-28 08:30:00       272.8          22.0
#>   RH_% report
#> 1  100      1
#> 2   95      1
#> 3   98      1
#> 4   99      1
#> 5  100      1
#> 6   99      1
```

## Data Visualisation

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />

## Flood Level Data

    #> # A tibble: 154 × 16
    #>    Report_Date Report_Time         River_Basin   Tributory_River Gauging_Station
    #>    <chr>       <dttm>              <chr>         <chr>           <chr>          
    #>  1 28-11-2025  2025-11-28 09:30:00 "Kelani Gang… Kelani Ganga    Nagalagam Stre…
    #>  2 28-11-2025  2025-11-28 09:30:00 "Kelani Gang… Kelani Ganga    Nagalagam Stre…
    #>  3 28-11-2025  2025-11-28 09:30:00 "Kelani Gang… Kelani Ganga    Hanwella       
    #>  4 28-11-2025  2025-11-28 09:30:00 "Kelani Gang… Kelani Ganga    Hanwella       
    #>  5 28-11-2025  2025-11-28 09:30:00 "Kelani Gang… Kelani Ganga    Glencourse     
    #>  6 28-11-2025  2025-11-28 09:30:00 "Kelani Gang… Kelani Ganga    Glencourse     
    #>  7 28-11-2025  2025-11-28 09:30:00 "Kelani Gang… Kelani Ganga    Kithulgala     
    #>  8 28-11-2025  2025-11-28 09:30:00 "Kelani Gang… Kelani Ganga    Kithulgala     
    #>  9 28-11-2025  2025-11-28 09:30:00 "Kelani Gang… Gurugoda Oya    Holombuwa      
    #> 10 28-11-2025  2025-11-28 09:30:00 "Kelani Gang… Gurugoda Oya    Holombuwa      
    #> # ℹ 144 more rows
    #> # ℹ 11 more variables: Unit <chr>, AlertLevel <dbl>, MinorFloodLevel <dbl>,
    #> #   MajorFloodLevel <dbl>, Remarks <chr>, WaterLevelRising_or_Falling <chr>,
    #> #   Water_Level_Time <chr>, Water_Level <dbl>, RFmm <dbl>,
    #> #   RFmm_measured_at <chr>, Water_Level_DateTime <dttm>

## Situation Report

``` r
situation_report_30NOV1600
#> # A tibble: 25 × 8
#>    Districts    Families Persons Deaths Missing Safety_centres
#>    <chr>           <dbl>   <dbl>  <dbl>   <dbl>          <dbl>
#>  1 Puttlama        36098  135922     NA       2             59
#>  2 Badulla          7973   32760     71      53            180
#>  3 Moneragala        968    3346      3       1              5
#>  4 Matale            806    4836     20      10             40
#>  5 Colombo         40740  174255      2       1             97
#>  6 Batticola       16257   47856      2      NA             17
#>  7 Kegalle           557    2095      2       1             14
#>  8 Trincomalee     16604   54107     NA      NA             21
#>  9 Anuradhapura     7429   25800      5      NA             92
#> 10 Mullaitivu       1550    4592      1      NA            102
#> # ℹ 15 more rows
#> # ℹ 2 more variables: Families_safetycentres <dbl>, Persons_safetycentres <dbl>
```

## Load dashboard

``` r
load_dashboard()
```

![](hexsticker/db.png)

This package was developed for educational purposes using weather data
recorded by the [Department of Meteorology, Sri
Lanka](https://meteo.gov.lk/), [Disaster Management
Centre](https://www.dmc.gov.lk/index.php?lang=en) and Hydrology and
Disaster Management Division, Irrigation Department, Sri Lanka. All data
provided in this package have been obtained from publicly available
sources and transformed into a tidy format to support reproducible and
user-friendly analysis.
