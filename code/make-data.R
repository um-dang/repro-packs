library(palmerpenguins)
library(tidyverse)
set.seed(2019)

sample_species <- function(species_name, dat, n=5) {
    dat %>%
        filter(species == species_name) %>%
        sample_n(n)
}

species <- penguins %>%
    pull(species) %>%
    unique() %>%
    as.character()

map_dfr(species, sample_species, penguins) %>%
    write_tsv('data/penguins_n-15.tsv')

penguins %>%
    write_tsv('data/penguins_n-344.tsv')
