library(tidyverse)
set.seed(snakemake@params[['seed']])
n <- snakemake@params[['n']]
tibble(logistic_regression = rnorm(n, 0.7, 0.11),
                  random_forest = rnorm(n, 0.75, 0.1)) %>%
    pivot_longer(cols = everything(), names_to = 'model', values_to = 'AUROC') %>%
    write_tsv(snakemake@output[['tsv']])
