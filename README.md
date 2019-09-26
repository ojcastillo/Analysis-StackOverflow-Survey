# StackOverflow Survey Analysis
Analysis of StackOverflow Survey trends with a focus in Venezuela

## Initial Setup

### Installing Dependencies

You can find all the Python dependencies in the `requirements.txt` file. It is recommended to use a
`conda` managed environment

Running the following command will set up a `conda` environment automatically, assuming `conda` is
installed ([instructions](https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html)).

```bash
. init_workspace.sh
```

### Downloading Datasets

Use the following command to download the survey results for the year 2017, 2018 and 2019 to a
folder named `datasets`:

```bash
sh download_datasets.sh
```

## Acknowledgements

Data is directly taken from [StackOverflow](https://insights.stackoverflow.com/survey/) and licensed
under the [Open Database License (ODbL)](https://opendatacommons.org/licenses/odbl/1.0/).
