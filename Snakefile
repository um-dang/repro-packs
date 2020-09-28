
rule targets:
    input:
        expand('data/data_n-{n}_seed-{seed}.tsv', n=[3, 100], seed=[2019])

rule make_data:
    input:
        R='code/make-data.R'
    output:
        tsv='data/data_n-{n}_seed-{seed}.tsv'
    script:
        'code/make-data.R'