# JHI/IBioIC Introduction to Bioinformatics: 6-7 March 2018

## Table of Contents

1. [Introduction](#intro)
2. [Schedule](#schedule)
3. [Previous presentations](#previous)
4. [Running the materials](#running)
    - [Run on MyBinder in the cloud](#mybinder)
    - [From Virtual Machine on your own machine](#vm)
    - [From GitHub repository on your own machine](#github)

<a id="intro"></a>
## Introduction

Welcome to the GitHub repository for the JHI/IBioIC Introduction to Bioinformatics course. This document provides a record of previous presentations, and a schedule for the forthcoming presentation.

You can run the Jupyter notebook content of this course by following the [link to MyBinder](http://mybinder.org/repo/widdowquinn/teaching-ibioic-intro-to-bioinformatics) in the button below.

[![Binder](http://mybinder.org/badge.svg)](http://mybinder.org:/repo/widdowquinn/teaching-ibioic-intro-to-bioinformatics)

We also provides instructions in the `Setup` section below to help you download and set up the course materials for your own use, so that there are the minimum of technical issues.

<a id="schedule"></a>
## Schedule: 6th-7th March 2018, University of Glasgow

### Tuesday 6th March, 0930-1230

* Welcome and introduction (Leighton, Sue, Peter)
* Introduction to Linux, Jupyter and Python (Peter)
* Introduction to sequence data and bioinformatics (Peter)

### Tuesday 6th March, 1330-1700

* Mining bioinformatics databases (Leighton)

### Wednesday 7th March, 0930-1230

* Reproducible research (Leighton)
* Worked example (Peter, Leighton, Sue)

### Wednesday 7th March, 1330-1700

* Structural bioinformatics (Sue)
* Conclusion and wrap-up (Leighton, Peter, Sue)


<a id="previous"></a>
## Previous presentations

* 16th-17th March 2017: University of Strathclyde, Glasgow [site](https://widdowquinn.github.io/Teaching-IBioIC-Intro-to-Bioinformatics/)


<a id="running"></a>
## Running the Materials

<a id="mybinder"></a>
### Run on MyBinder

MyBinder is a cloud-based service that allows you to run Jupyter notebooks in the cloud. This course is provided as interactive notebooks *via* this service, and you can start up an instance by clicking on the button below:

[![Binder](http://mybinder.org/badge.svg)](http://mybinder.org:/repo/widdowquinn/2018-03-06-ibioic)

<a id="vm"></a>
### From virtual machine on your own machine

You can, if you choose, shortcut the process by downloading a pre-prepared Ubuntu virtual machine, which comes with course materials and tool prerequisites.

* [Download Ubuntu VM](https://doi.org/10.5281/zenodo.400943)

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.400943.svg)](https://doi.org/10.5281/zenodo.400943)

Setting up the course materials on your own machine involves following stages:

1. Clone the repository
2. Ensure the bioinformatics package prerequisites are installed
3. Create a virtual environment for the Jupyter notebooks

<a id="github"></a>
### From GitHub repository on your own machine.

#### Obtaining the repository

1. To obtain a zipped, compressed file containing these materials from the GitHub repository, [click here](https://github.com/widdowquinn/2018-03-06-ibioic/archive/v1.0.zip)

So that the paths in the examples will match your system, please uncompress this file in your home directory.

2. To clone the repository, run the following commands in the terminal. The instructions describe making the clone in your home directory to ensure the paths in the examples will match your system.

```
cd ~
git clone git@github.com:widdowquinn/Teaching-IBioIC-Intro-to-Bioinformatics.git
```

This will download the repository in a subdirectory of your home directory called `Teaching-IBioIC-Intro-to-Bioinformatics`. 

#### Working within the repository

However you acquire the files, you can change working location to this directory with the command:

`cd ~/Teaching-IBioIC-Intro-to-Bioinformatics`

**Install packages: Create Virtual Environment***

It is recommended to use a Python virtual environment to ensure that compatible libraries can be installed, separately from your system Python installation to avoid conflicts.

**`virtualenv`**

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


**Jupyter Kernel setup**

To use the Jupyter notebooks with the version of Python and packages installed under your virtual environment, you will need to make a *kernel* for your virtualenv available. This can be done by activating your virtual machine, and then installing a kernel with the commands below.

```
$ source venv-IBioIC/bin/activate
$ python -m ipykernel install --user --name Python3_ibioic_course --display-name "Python 3 (IBioIC)"
```
