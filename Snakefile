

rule download:
    output:
        tsv="data/ml_data.tsv"
    params:
        url='https://raw.githubusercontent.com/um-dang/repro-packs/make-data/data/data_n-3_seed-2019.tsv'
    shell:
        "wget -O {output.tsv} {params.url}"

rule plot:
    input:
        tsv=rules.download.output,
        R='code/boxplot.R'
    output:
        png='figures/boxplot.png'
    script:
        'code/boxplot.R'


rule render_paper:
    input:
        Rmd='paper/paper.Rmd',
        R='code/render.R',
        plots=rules.plot.output.png,
    output:
        pdf='paper/paper.pdf'
    script:
        'code/render.R'