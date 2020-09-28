# repro-packs

Organizing projects for reproducibility and headache prevention.

## Outline

1. Every paper is a self-contained directory/folder.
    - Put all of the figures, code, & data that go into a paper in one place.
    - Keeps you organized while you're working on the project.
    - Makes it easier to find what you're looking for later on.
1. Directory structure.
    - Data
    - Code
    - Results
    - Figures
    - Notebooks
    - Paper
1. Use version control.
    - Keeps a historical record for tracking down bugs.
    - Frees you to try new things without fear of breaking anything.
    - Makes collaborating easier.
    - Serves as an online backup in case your computer dies.
1. Automate everything.
    - All outputs (figures, summary tables, manuscript, etc) should be created by code.
        - Avoid using GUI programs. If inputs change, you then have to use the GUI again to manually create the output.
    - How all output files are created should be described by a "driver script."
        - e.g. Makefile, Snakemake workflow, other workflow manager.
1. Note the dependencies and their version numbers.
    - Note the command-line programs and software packages you use and their versions.
    - e.g. use a conda environment file.

## More resources

- [How repro-packs can save your future-self](https://lorenabarba.com/blog/how-repro-packs-can-save-your-future-self/)
- [Ten Simple Rules for Reproducible Computational Research](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1003285)
- [A Quick Guide to Organizing Computational Biology Projects](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1000424)