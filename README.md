# MESA array job template (ISTA cluster)

This is a template repository to use as a guide for running MESA on the ISTA cluster.

## Installation

To use this template simply click the `Use this template` button in the top right of the GitHub page. This creates a personal repository for you with the same structure and files as this template.

Then copy the link to your newly created repository and run on the cluster the command

```{shell}
git clone https://github.com/USERNAME/REPOSITORY.git
```

with your github account name and the name of your personal repository on the cluster.

## Usage

The main script here is `run.sh`. This is the bash script that in the end will be used for creating an slurm array-job.

There are two variables that have to be fully set:

### `WORK_DIR`

This is the absolute path to the created directory on the cluster. You can find the absolute path by navigating to the directory you just created and running the command `pwd`. Then copy the shown path into this variable.

### `BASE_MESA_DIR`

This is the template MESA directory on which your run is based on. This could be for example the `$MESA_DIR/star/work` directory, or a personal template.

Lastly, before the command that runs MESA you can add additional commands that are needed to setup your MESA run.