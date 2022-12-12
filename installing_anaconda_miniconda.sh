#!/bin/bash

--------------------------
# Choose Anaconda if you:

# Are new to conda or Python
# Like the convenience of having Python and over 1500 scientific packages automatically installed at once
# Have the time and disk space (a few minutes and 3 GB), and/or
# Don’t want to install each of the packages you want to use individually.

# Choose Miniconda if you:

# Do not mind installing each of the packages you want to use individually.
# Do not have time or disk space to install over 1500 packages at once, and/or
# Just want fast access to Python and the conda commands, and wish to sort out the other programs later.
# I use Miniconda myself. Anaconda is bloated. Many of the packages are never used, 
# and could still be easily installed if and when needed.

--------------------------------------------

# INSTALLING ANACONDA / MINICONDA

# Documentation

# MacOS: https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html#system-requirements
# Windows: https://docs.conda.io/projects/conda/en/latest/user-guide/install/windows.html#install-win-silent
# Managing conda environments: https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html

# 1. download the installer

# Miniconda - 
https://docs.conda.io/en/latest/miniconda.html

# Anaconda - 
https://www.anaconda.com/products/distribution

# 2. Verify the installer hashes

shasum -a 256 filename

# SHA-256 verification is used because it is more secure than MD5

# 3. Install Anaconda/Miniconda

# Miniconda

bash Miniconda3-latest-MacOSX-x86_64.sh 

# Anaconda

# double-click on the .pkg file and follow the prompts on the screen.
# if unsure about any setings, accept default. They can be changed later.
# for changes to take effect, close and reopen terminal
# test installation

conda list

# the command above returns a list of installed packages if it has been installed correctly

------------------------------

# INSTALLING IN SILENT MODE

# The following instructions are for Miniconda. For Anaconda, substitute 'Anaconda' for 'Miniconda' 
# in all of the commands.
# you will need to specify the -b and -p arguments of the bash installer
# -b - Batch mode with no PATH modifications to shell scripts. Assumes that you agree to the license agreement. 
# Does not edit shell scripts such as .bashrc, .bash_profile, .zshrc, etc.
# -p - installation prefix/path
# -f - force installation even if -p already exists

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O ~/miniconda.sh

bash ~/miniconda.sh -b -p $HOME/miniconda

# The installer prompts “Do you wish the installer to initialize Miniconda3 by running "conda init?" 
# We recommend “yes”.

# In order to initialize after the installation process is done, first run

source <path to conda>/bin/activate

# Then run


conda init

# or 

conda init zsh 

# for macOS Catalina (and later)

-------------------------------------------------

# UPDATING ANACONDA OR MINICONDA

# open a terminal window

conda update conda

-------------------------------------------------

# UNINSTALLING ANACONDA OR MINICONDA

rm -rf ~/miniconda

# optional - but you can remove hidden conda files with 

rm -rf ~/.condarc ~/.conda ~/.continuum
