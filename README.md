# README.md - Teaching IBioIC-Intro-to-Bioinformatics

## Introduction

Welcome to the GitHub repository for the JHI/IBioIC Introduction to Bioinformatics course. This document provides a record of presentations, a schedule for the day, and provides instructions to help you download and set up the course materials for your own use, so that there are the minimum of technical issues.

## Schedule: 16th-17th March 2017, MC407 McCance Building, University of Strathclyde

### Thursday 16th March, 0930-1230

* Welcome and introduction (Leighton, Sue, Peter)
* Introduction to Linux, Jupyter and Python (Peter)
* Introduction to sequence data and bioinformatics (Peter)

### Thursday 16th March, 1330-1700

* Mining bioinformatics databases (Leighton)

### Friday 17th March, 0930-1230

* Reproducible research (Leighton)
* Worked example (Peter, Leighton, Sue)

### Friday 17th March, 1330-1700

* Structural bioinformatics (Sue)
* Conclusion and wrap-up (Leighton, Peter, Sue)


## Setup

Setting up the course materials on your own machine involves following stages:

1. Clone the repository
2. Ensure the bioinformatics package prerequisites are installed
3. Create a virtual environment for the Jupyter notebooks

You can, if you choose, shortcut the process by downloading a pre-prepared Ubuntu virtual machine, which comes with course materials and tool prerequisites.

* [Download Ubuntu VM]()

### Cloning the repository

To clone the repository, run the following commands in the terminal. We are doing the clone in your home directory to ensure The paths in the examples will match your system.

```
cd ~
git clone git@github.com:widdowquinn/Teaching-IBioIC-Intro-to-Bioinformatics.git
```

This will download the repository in a subdirectory of your home directory called `Teaching-IBioIC-Intro-to-Bioinformatics`. You can change working location to this directory with the command:

`cd ~/Teaching-IBioIC-Intro-to-Bioinformatics`

### Install packages: Create Virtual Environment

It is recommended to use a Python virtual environment to ensure that compatible libraries can be installed, separately from your system Python installation to avoid conflicts.

#### `virtualenv`

To create a new virtual environment, you can use the following command (if `virtualenv` is installed):

```
virtualenv venv-IBioIC -p python3.6
```

To start the virtual environment, issue the following:

```
source venv-IBioIC/bin/activate
```

Then, to install the required Python packages, you can use `pip` with the provided `requirements.txt` file:

```
pip install -r requirements.txt
```


#### Jupyter Kernel setup

To use the Jupyter notebooks with the version of Python and packages installed under your virtual environment, you will need to make a *kernel* for your virtualenv available. This can be done by activating your virtual machine, and then installing a kernel with the commands below.

```
$ source venv-IBioIC/bin/activate
$ python -m ipykernel install --user --name Python3_ibioic_course --display-name "Python 3 (IBioIC)"
```
