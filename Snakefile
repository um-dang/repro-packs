
rule make_data:
    input:
        R='code/make-data.R'
    output:
        tsv='data/ml_data.tsv'
    params:
        n=3,
        seed=2019
    script:
        'code/make-data.R'