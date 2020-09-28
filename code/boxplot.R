library(tidyverse)
boxplot <- read_tsv(snakemake@input[['tsv']]) %>%
    ggplot(aes(species, body_mass_g)) +
    geom_boxplot() +
    theme_classic()
ggsave(snakemake@output[['png']], plot = boxplot)
