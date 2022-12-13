#!/bin/bash

# To install any bioinformatics software using conda, you need to 
# - specify an environment where the softwares will be installed
# - always activate the environment whenever you wish to run the software packages

# there are two nice ways to install bioinformatics softwares using conda

----------------------------

# STEP 1: CREATE ENVIRONMENT SEPARATELY & INSTALL PACKAGES SEPARATELY

# create an environment 

conda create -n <name_of_env>

# then activate environment before installing packages in it

conda activate <name_of_env>

# then install the software package

conda install samtools




---------------

# alternatively, you do not need to activate the environment before installing software packages
# you can specify the name of the environment and conda will install the packages in the env

conda install -n <name_of_env> bcftools samtools

# however, you must reactivate the environment before running the softwares installed

-------------------------




# STEP 2: CREATE ENVIRONMENT AND INSTALL PACKAGES SIMULTANEOUSLY

# conda create -n <name_of_environment> <name_of_software>
# e.g.

conda create -n Bioinformatics samtools

# you can also install more than one software package at a time

# conda create -n <name_of_environment> <name_of_software1> name_of_software2> etc
# e.g.

conda create -n Bioinformatics samtools python bcftools

-------------------------


# STEP 3: INSTALL PACKAGES FROM AN environment.yml FILE

# this works best if you have a lot of packages to install
# you can also specify the version of the software

# the environment.yml file contains three sections:
# - the name of the environment (name)
# - the name of the channels (channels)
# - the dependencies/softwares you want to install (dependencies)

# the environment.yml file can be created in the terminal and saved in the working directory where the environment is
# the environment.yml file should look like this

------------
name: bioinformatics
channels:
 - conda-forge
 - bioconda
dependencies:
 - samtools
 - python=3.8 (where 3.8 is the version of python you want to install)
 - bcftools
---------------

# this file can be saved in the nano file, saved as "environment.yml"

# to then run the environment.yml file

conda env create -f environment.yml

# you can check the list of environments 

conda env list













