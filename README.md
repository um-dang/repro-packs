# repro-packs

Organizing projects for reproducibility and headache prevention.

Making your research projects reproducible ensures that anyone,
whether that’s another scientist reading your publication or you six months from now,
can use the same methods and data to find the same results.
Reproducible research is not only a good practice to validate results and to allow others to build off prior work,
it also makes your life easier when you need to update software,
try out different parameters in a pipeline, or find bugs in your code!
A reproducibility package (“repro-pack”, coined by [Lorena Barba](https://lorenabarba.com/))
is a collection of all the data, code, and figures used to produce the results of a research paper in an automated fashion.
We’ll walk through an example of how to organize a project as a repro-pack and
share it online so your work will be maximally reproducible.


- **Reproducibility** is the ability to regenerate a result with the same data set and data analysis pipeline.
- **Replicability** is the ability to produce a consistent result with an independent experiment asking the same scientific question.

## Quick Start

1. Clone this repo
    ``` sh
    git clone https://github.com/um-dang/repro-packs
    ```

1. Install dependencies
    ``` sh
    conda env create -f environment.yml -n repropack
    conda activate repropack
    ```

1. Run the workflow
    ``` sh
    snakemake --cores 2
    ```

## Outline

1. Every paper is a self-contained directory/folder.
    - Put all of the figures, code, & data that go into a paper in one place.
    - Keeps you organized while you're working on the project.
    - Makes it easier to find what you're looking for later on.

1. Directory structure.

    ```
    .
    ├── LICENSE.md
    ├── README.md
    ├── Snakefile
    ├── code
    ├── data
    ├── environment.yml
    ├── figures
    ├── notebooks
    ├── paper
    │   └── paper.Rmd
    └── results
    ```

1. Note dependencies and their version numbers.
    - Note the command-line programs and software packages you use and their versions.
    - e.g. use a [conda environment file](environment.yml), Dockerfile, etc.

1. Version control.
    - Keeps a historical record for tracking down bugs.
    - Frees you to try new things without fear of breaking anything.
    - Makes collaborating easier.

1. Automate everything.
    - All outputs (figures, summary tables, manuscript, etc) should be created by code.
        - Avoid using GUI programs. If inputs change, you then have to use the GUI again to manually create the output.
    - How all output files are created should be described by a **driver script**.
        - e.g. Make, Snakemake, Nextflow, other workflow manager.
    - Consider using **literate programming** (e.g. R Markdown, Jupyter Notebook) to write your manuscript, so you can mix code and prose in the same document.
        - For every number or statistic reported in the paper, it should be easy to trace how it was computed.

1. Share your repro-pack.
    - Include a [license file](LICENSE.md) so others will know if & how they're allowed to use your code. See [choosealicense.com](https://choosealicense.com/) for guidance on choosing an appropriate license for your needs.
    - Include a [readme file](README.md) and describe how to download and get started using your project.
    - [GitHub](https://github.com) is a popular choice for sharing code and collaborating.
        - You can keep the repo private until you're ready to share it with the world.
        - Also serves as an online backup in case your computer dies.

## More resources

- Data source: [`palmerpenguins`](https://education.rstudio.com/blog/2020/07/palmerpenguins-cran/).
- [How repro-packs can save your future-self](https://lorenabarba.com/blog/how-repro-packs-can-save-your-future-self/).
- [Ten Simple Rules for Reproducible Computational Research](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1003285).
- [A Quick Guide to Organizing Computational Biology Projects](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1000424).