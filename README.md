# JHI/IBioIC Introduction to Bioinformatics: 6-7 March 2018

<!-- TOC -->

- [Introduction](#introduction)
- [Setup](#setup)
    - [Prerequisites](#prerequisites)
- [Schedule: 6th-7th March 2018, University of Strathclyde, Glasgow](#schedule-6th-7th-march-2018-university-of-strathclyde-glasgow)
- [Previous presentations](#previous-presentations)
- [Course materials](#course-materials)
    - [0. Introducing the Software Platform](#0-introducing-the-software-platform)
    - [1. Sequences](#1-sequences)
    - [2. Mining Public Databases](#2-mining-public-databases)
    - [3. Worked Example](#3-worked-example)
    - [4. Structural Bioinformatics](#4-structural-bioinformatics)
- [About the authors and tutors](#about-the-authors-and-tutors)

<!-- /TOC -->


<a id="introduction"></a>
## Introduction

Welcome to the GitHub repository for the JHI/IBioIC Introduction to Bioinformatics course. This document provides a schedule for this course presentation, and links to course documentation and setup.

-------

<a id="setup"></a>
## Setup

To participate in this workshop, you will need access to some standard bioinformatics software packages, listed below. In addition, you will need an up-to-date web browser. Installation and configuration instructions for these tools, and the course materials, are provided at the site linked below:

- [Setup instructions for the workshop](https://2018-03-06-ibioic.readthedocs.io/en/latest/)

### Prerequisites

To use the course materials with your own laptop, you will require:

- An up-to-date web browser (Chrome, Firefox, Safari, etc.)
- Anaconda (this provides Python and Jupyter) [homepage](https://www.anaconda.com/)
- Artemis [homepage](http://www.sanger.ac.uk/science/tools/artemis)
- Bash (for Windows, Git Bash) [Git Bash homepage](https://gitforwindows.org/)
- Blast [homepage](https://www.ncbi.nlm.nih.gov/guide/howto/run-blast-local/)
- Git (provided with Git Bash on Windows) [Git for Windows homepage](https://gitforwindows.org/)
- Jalview [homepage](http://www.jalview.org/)
- JMol [homepage](http://jmol.sourceforge.net/)
- Muscle [homepage](https://www.drive5.com/muscle/)
- Python packages: `biopython`, `bioservices`, `seaborn`

If there are installation issues, or it is otherwise not possible to install the prerequisites, we provide a virtual machine image with all the tools and materials pre-installed. For this you will require:

- The virtual machine image [download](https://zenodo.org/record/1184095) ![Zenodo download badge](https://zenodo.org/badge/DOI/10.5281/zenodo.1184095.svg)
- VirtualBox [homepage](https://www.virtualbox.org/wiki/VirtualBox)

This virtual machine is large (>11GB) so if you need to download it we **strongly** advise that you do so before attending the course.

-------

<a id="schedule"></a>
## Schedule: 6th-7th March 2018, University of Strathclyde, Glasgow

**Location**: Room CU330B, Curran Building, University of Strathclyde, Cathedral Street, Glasgow.

* [Map](https://www.google.com/maps/place/Curran+Building,+16+Richmond+St,+Glasgow+G1+1XQ/@55.8635143,-4.2425653,17z/data=!3m1!4b1!4m5!3m4!1s0x4888441d7a275c5d:0xeab1b2207289c63b!8m2!3d55.8634603!4d-4.2406053?sa=X&ved=0ahUKEwilwLbY-cbZAhXDJsAKHc7uAocQ8gEINjAB)

<div class="row">
  <div class="col-md-6">
    <h3>Day 1: 6th March 2018</h3>
    <table class="table table-striped">
      <tr>
        <td>09:30</td>
        <td>1. Welcome and introduction (Leighton, Sue, Peter)<br />
        2. Introduction to Bash, Jupyter and Python (Peter)<br />
        3. Introduction to sequence data and bioinformatics (Peter)
        </td>
      </tr>
      <tr>
        <td>12:30</td>
        <td>Lunch break</td>
      </tr>
      <tr>
        <td>13:30</td>
        <td>Mining bioinformatics databases (Leighton)</td>
      </tr>
      <tr>
        <td>16:30</td>
        <td>Wrap-up</td>
      </tr>
      <tr>
        <td>17:00</td>
        <td>END</td>
      </tr>
    </table>
  </div>
  <div class="col-md-6">
    <h3>Day 2: 7th March 2018</h3>
    <table class="table table-striped">
      <tr>
        <td>09:30</td>
        <td>1. Reproducible research (Leighton)<br />
        2. Worked example (Peter, Leighton, Sue)
        </td>
      </tr>
      <tr>
        <td>12:30</td>
        <td>Lunch break</td>
      </tr>
      <tr>
        <td>13:30</td>
        <td>Structural bioinformatics (Sue)</td>
      </tr>
      <tr>
        <td>16:30</td>
        <td>Wrap-up</td>
      </tr>
      <tr>
        <td>17:00</td>
        <td>END</td>
      </tr>
    </table>
  </div>
</div>



<a id="previous"></a>
## Previous presentations

* 16th-17th March 2017: University of Strathclyde, Glasgow ([website](https://widdowquinn.github.io/Teaching-IBioIC-Intro-to-Bioinformatics/))

--------

<a id="materials"></a>
## Course materials

We provide the course notebooks and slides as webpages, in the links below:

**Slidesets**
​
* [Course schedule](./schedule.html)
​
### 0. Introducing the Software Platform
​
**Lessons**
​
* [00. The command line and Linux (`terminal`)](00-platform/00-command-line.html) - <font color='green'><b>introductory</b></font>
* [01. Jupyter Notebooks (`notebook`)](00-platform/01-jupyter.html) - <font color='green'><b>introductory</b></font>
* [02. Python (`notebook`)](00-platform/02-python.html) - <font color='green'><b>introductory</b></font>
​

**Learning Outcomes**
​
* Familiarity with the Linux command line
* Familiarity with remote access to a Linux server
* Familiarity with Jupyter notebooks
* Familiarity with Python
* Awareness of counting from zero versus from one

### 1. Sequences
​
**Lessons**
​
* [01. FASTA format and parsing it (`notebook`)](01-introduction/01-introduction.html) - <font color='green'><b>introductory</b></font>
* [02. GenBank format and annotation (`browser`, `notebook`)](01-introduction/02-annotation.html) - <font color='green'><b>introductory</b></font>
* [03. Parsing GenBank (`notebook`)](01-introduction/03-parsing.html) - <font color='orange'><b>intermediate</b></font>
* [04. Multiple Sequence Alignment (`terminal`)](01-introduction/04-msa.html) - <font color='green'><b>introductory</b></font>
​

**Learning Outcomes**
​
* Familiarity with FASTA file format
* Familiarity with GenBank file format
* Familiarity with Artemis for viewing GenBank files
* Familiarity with Jalview for viewing multiple sequence alignments

### 2. Mining Public Databases
​
**Lessons**
​
* [01. `BLAST+` at NCBI (`browser`)](02-sequence_databases/01-blast_at_NCBI_website.html) - <font color='green'><b>introductory</b></font>
* [02. `BLAST+` at the terminal (`terminal`)](02-sequence_databases/02-blast_at_terminal.html) - <font color='green'><b>introductory</b></font>
* [03. Programming for local `BLAST` searches (`notebook`)](02-sequence_databases/03-programming_for_blast.html) - <font color='orange'><b>intermediate</b></font>
* [04. Using NCBI `BLAST+` service with Python (`notebook`)](02-sequence_databases/04-programming_for_web_blast.html) - <font color='orange'><b>intermediate</b></font>
* [05.  Reciprocal `BLAST` Hits (RBH) (`notebook`)](02-sequence_databases/05-blast_for_rbh.html) - <font color='red'><b>advanced</b></font>
* [06.  `UniProt` (`browser`)](02-sequence_databases/06-uniprot_browser.html) - <font color='green'><b>introductory</b></font>
* [07.  Programming for `UniProt` (`notebook`)](02-sequence_databases/07-uniprot_programming.html) - <font color='orange'><b>intermediate</b></font>
* [08.  `KEGG` (`browser`)](02-sequence_databases/08-KEGG_browser.html) - <font color='green'><b>introductory</b></font>
* [09.  Programming for `KEGG` (`notebook`)](02-sequence_databases/09-KEGG_programming.html) - <font color='orange'><b>intermediate</b></font>
* [10.  `Ensembl` (`browser`)](02-sequence_databases/10-ensembl_browser.html) - <font color='green'><b>introductory</b></font>
​

**Slidesets**
​
* [Interpreting `BLAST` results](02-sequence_databases/slides01-blast_interpretation.html)
​

**Learning Outcomes**
​
* Programmatic control of common bioinformatics tools
* Programmatic querying of online bioinformatics resources
* Analysis of bioinformatics tool output with `pandas`
* Visualisation of bioinformatics tool output with `biopython` and `seaborn`
* Interpretation of bioinformatics tool output

### 3. Worked Example

**Slidesets**
​
* [Reproducible research](03-lipases/slides01-reproducible_research.html)

**Lessons**

* [00. Challenge (`notebook`/`browser`)](03-lipases/00-Challenge.html) - <font color='green'><b>introductory</b></font>/<font color='orange'><b>intermediate</b></font>

### 4. Structural Bioinformatics
​
**Lessons**
​
* [01. RCSB (`browser`)](04-structure/04Structure-01.html) - <font color='green'><b>introductory</b></font>
* [02. Web-based visualisation (`browser`)](04-structure/04Structure-02.html) - <font color='green'><b>introductory</b></font>
* [03. JMol visualisation (`terminal`)](04-structure/04Structure-03.html) - <font color='orange'><b>intermediate</b></font>
* [04. Structure comparisons (`browser`)](04-structure/04Structure-04.html) - <font color='green'><b>introductory</b></font>
* [05. Structure prediction (`browser`)](04-structure/04Structure-05.html) - <font color='green'><b>introductory</b></font>
​

**Learning Outcomes**
​
* Obtaining representative structures from public databases
* Visualisation and interpretation of protein structure
* Scripting structure visualisation tools to generate images for publication
* Comparison of protein structures to make functional inferences
* Predicting protein structure from sequence

-------

## About the authors and tutors

* [Peter Cock](http://www.hutton.ac.uk/staff/peter-cock) is a computational biologist at the [James Hutton Institute](http://www.hutton.ac.uk/), and lead developer for [Biopython](http://biopython.org/wiki/Documentation). He works largely with nematodes and viruses.
* [Sue Jones](http://www.hutton.ac.uk/staff/sue-jones) is a computational biologist at the [James Hutton Institute](http://www.hutton.ac.uk/), with interests in functional genomics, transcriptional regulation, and viruses.
* [Leighton Pritchard](http://www.hutton.ac.uk/staff/leighton-pritchard) is a computational biologist at the [James Hutton Institute](http://www.hutton.ac.uk/), with particular interests in host-microbe interactions, and systems and synthetic biology.