library(tidyverse)
boxplot <- read_tsv(snakemake@input[['tsv']]) %>%
    ggplot(aes(model, AUROC)) +
    geom_boxplot() +
    geom_hline(yintercept = 0.5, linetype = "dashed") +
    ylim(0, 1) +
    labs(y = 'Performance', x = '') +
    theme_classic()
ggsave(snakemake@output[['png']], plot = boxplot)
