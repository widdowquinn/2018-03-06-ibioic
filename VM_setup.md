# VM_setup.md

This document describes the setup for a VirtualBox virtual machine to be used as the base installation for working through the training materials in this course.

We make available a virtual machine image at [`zenodo`]() (doi:) which should be sufficient to run the course materials.

* Course VM: [download]()

The username for this VM is `ibioic` and the password is `ibioic-course`.

We base our VM on the basic `Ubuntu` 16.10 installation, obtained from [this site](http://releases.ubuntu.com/16.10/). The VM image was built and installed by the course tutors. The system is set by default to use 4GB of the host system RAM, and 128MB of video memory.

## `VirtualBox`

The `VirtualBox` software can be downloaded for your OS from [this page
(https://www.virtualbox.org/wiki/Downloads).

Once you have downloaded the application, please follow the instructions relevant for your system to install.

For the course VM, you will also need to install the VirtualBox Extension Pack, available [here](https://www.virtualbox.org/wiki/Downloads).

## Installed tools

In addition to the tools that were available with the base VM, we have installed:

#### `apt-get`

`apt-get` was updated with

```
sudo apt-get update
```

```
sudo apt-get install aptitude
```

#### `BLAST+`

```
sudo apt-get install ncbi-blast+
```

#### `HMMer`

`HMMer` is a hidden Markov model-based tools for sequence profile generation and searching.

```
sudo apt-get install hmmer
```

#### `git`

`git` is required to obtain the most up-to-date version of the course materials.

```
sudo apt-get install git
```

#### `python`

We install Python 3.6, including development libraries, and the virtual environment creation and management tool `virtualenv`.

```
sudo apt-get install python3.6
sudo apt-get install python3.6-dev
```

```
sudo apt-get install virtualenv
```

#### `muscle`

`muscle` is a widely-used sequence alignment package

```
sudo apt-get install muscle
```

#### `clustal omega`

`clustal omega` is a widely-used sequence alignment package

```
sudo apt-get install clustalo
```

#### `t-coffee`

`t-coffee` is a widely-used sequence alignment package

```
sudo apt-get install t-coffee
```

#### `pymol`

`pymol` is a widely-used structural biology and protein structure visualisation tool

```
sudo apt-get install pymol
```

#### `samtools`

`samtools` is the standard package for converting and manipulating short-read sequencing data

```
sudo apt-get install samtools
```

#### `Artemis`/`ACT`

`Artemis` and `ACT` are widely-used genome annotation tools.


#### Google Chrome

This is our preferred browser. The installation file for `google-chrome-stable` was downloaded from Google and installed directly.

#### `Tablet`

Tablet is a widely-used sequence assembly visualisation tool. The installer is downloaded from 