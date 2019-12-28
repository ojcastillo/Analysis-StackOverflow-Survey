# StackOverflow Survey Analysis

Since 2011, Stack Overflow has been running an
[Annual Developer](https://insights.stackoverflow.com/survey/) survey that
examines all aspects of the developer experience, from career satisfaction and
job search to education and opinions on open source software.

Stack Overflow already provides an in-depth analysis of the responses. I
examined the [2019 analysis](https://insights.stackoverflow.com/survey/2019)
and I thought it was really good, but one thing I would like to have seen is a
breakdown of the responses at a continent level. They do provide response counts
at this level in the Methodology section, but I didn't find anything else past
that. Additionally, I didn't get much of a sense about how the results compare
to previous years.

This motivated me to run an analysis of my own in which I zoom out to the
continents level and look at the responses for the past 3 years. Based on the
kind of responses I found interesting in the surveys, I'll focus on the
following questions:

- How many responses were received?
- What's the distribution of respondent's gender?
- What's the distribution of coding years?
- What are the most popular programming languages?

My goal is to get a sense of how diverse (or uniform) the responses are across
the world when looked from certain dimensions that I personally find relevant.
Additionally, by looking at past years we can potentially get an idea of some
trends in the field.

### Results

- Looking at the number of responses from each of the continents for the past 3
years, I discovered most of them are coming from North America, Europe and Asia.
But all continents observed the same trend: responses increased from 2017 to
2018, but from 2018 to 2019 they either stayed mostly the same or went down.
Difficulty to reach the survey from some parts of the world might partly explain
why responses went down on 2019 in certain continents.
- While examining the distributions of gender's responses, I discovered that
male is the largest group around the world by far, and it seems the degree of
dominance is pretty similar across and it hasn't changed much in the past 3
years. When combining responses from non-male genders into a single group, one
can easily notice that they haven't grown much. In fact, it looks like the group
is actually becoming smaller in some places!
- On the other hand, the distribution of coding year ranges offered the most
diverse results I observed in my analysis. The distribution was bell shaped at
times (2018 Europe), but other times it seems skewed left (2019 North America)
or skewed right (2018 Asia).
- Finally, I discovered that some of the most popular programming languages
around the world are the ones used for Web Development: `Javascript`,
`HTML/CSS`, and `SQL`. Only during 2017 we can observe other general programming
languages like `Java`, `C++`, `Python` at the top.

## What's on this repository?

- [analysis_notebook.ipynb](analysis_notebook.ipynb): Jupyter notebook that
contains all the outcome of the analysis, including the Python logic
to reproduce them.
- [init_workspace.sh](init_workspace.sh): Helper script that initializes a
conda environment with dependencies.
- [download_datasets.sh](download_datasets.sh): Helper script that downloads
the datasets for analysis from Stack Overflow.

## Initial Setup

### Installing Dependencies

You can find all the Python dependencies in the `requirements.txt` file. It is
recommended to use a `conda` managed environment.

Running the following command will set up a `conda` environment automatically,
assuming `conda` is installed
([instructions](https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html)).

```bash
. init_workspace.sh
```

### Downloading Datasets

Use the following command to download the survey results for the year 2017, 2018
and 2019 to a folder named `datasets`:

```bash
sh download_datasets.sh
```

## Acknowledgements

Data is directly taken from
[StackOverflow](https://insights.stackoverflow.com/survey/) and licensed
under the [Open Database License (ODbL)](https://opendatacommons.org/licenses/odbl/1.0/).
