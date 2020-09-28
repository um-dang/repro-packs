Exploratory
================
2020-09-28

``` r
library(tidyverse)
```

    ## ── Attaching packages ────────────────────────────────────────────────────────── tidyverse 1.3.0 ──

    ## ✓ ggplot2 3.3.2     ✓ purrr   0.3.4
    ## ✓ tibble  3.0.3     ✓ dplyr   1.0.2
    ## ✓ tidyr   1.1.2     ✓ stringr 1.4.0
    ## ✓ readr   1.3.1     ✓ forcats 0.5.0

    ## ── Conflicts ───────────────────────────────────────────────────────────── tidyverse_conflicts() ──
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
ml_data <- read_tsv('data/ml_data.tsv')
```

    ## Parsed with column specification:
    ## cols(
    ##   model = col_character(),
    ##   AUROC = col_double()
    ## )

``` r
head(ml_data)
```

    ## # A tibble: 6 x 2
    ##   model               AUROC
    ##   <chr>               <dbl>
    ## 1 logistic_regression 0.781
    ## 2 random_forest       0.842
    ## 3 logistic_regression 0.643
    ## 4 random_forest       0.623
    ## 5 logistic_regression 0.520
    ## 6 random_forest       0.824

``` r
names(ml_data)
```

    ## [1] "model" "AUROC"

``` r
ml_data %>% ggplot(aes(model, AUROC)) +
    geom_boxplot()
```

![](exploratory_files/figure-gfm/boxplot-1.png)<!-- -->
