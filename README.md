# README.md - Teaching IBioIC-Intro-to-Bioinformatics

## Introduction

Welcome to the GitHub repository for the JHI/IBioIC Introduction to Bioinformatics course. This document is intended to help you download and set up the course materials for your own use, so that there are the minimum of technical issues.

The setup comes in the following stages:

1. Clone the repository
2. Ensure the bioinformatics package prerequisites are installed
3. Create a virtual environment for the Jupyter notebooks

You can, if you choose, shortcut the process by downloading a pre-prepared Ubuntu virtual machine, which comes with course materials and tool prerequisites.

* [Download Ubuntu VM]()

## Cloning the repository

To clone the repository, run the following command in the terminal:

```
git clone git@github.com:widdowquinn/Teaching-IBioIC-Intro-to-Bioinformatics.git
```

This will download the repository in your current directory, in a subdirectory called `Teaching-IBioIC-Intro-to-Bioinformatics`. You can change working location to this directory with the command:

`cd Teaching-IBioIC-Intro-to-Bioinformatics`

## Install packages

## Create Virtual Environment

### Kernel setup

To use the Jupyter notebooks with the version of Python and packages installed under your virtual environment, you will need to make a *kernel* for your virtualenv available. This can be done by activating your virtual machine, and then installing a kernel with the commands below.

```
$ source venv-ibioic-course/bin/activate
$ python -m ipykernel install --user --name Python3_ibioic_course --display-name "Python 3 (IBioIC)"
```