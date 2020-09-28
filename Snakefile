
rule make_data:
    input:
        R='code/make-data.R'
    output:
        tsv1='data/penguins_n-15.tsv',
        tsv2='data/penguins_n-344.tsv'
    script:
        'code/make-data.R'