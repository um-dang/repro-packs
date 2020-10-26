library(tidyverse)
boxplot <- read_tsv(snakemake@input[['tsv']]) %>%
    ggplot(aes(species, body_mass_g)) +
    geom_boxplot() +
    labs(x = 'Species', y = 'Body Mass (g)') +
    theme_classic()
ggsave(snakemake@output[['png']], plot = boxplot)
