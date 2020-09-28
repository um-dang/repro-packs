library(tidyverse)
read_tsv(snakemake@input[['tsv']]) %>%
    ggplot(aes(model, AUROC)) +
        boxplot() +
        geom_hline(yintercept = 0.5, linetype="dashed") +
        ylim(0, 1) +
        labs(y='Performance', x='') %>%
    ggsave(snakemake@output[['png']])
