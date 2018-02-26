# VM_setup.md

This document describes the setup for a VirtualBox virtual machine to be used as the base installation for working through the training materials in this course.

We make available a virtual machine image at [`zenodo`](https://zenodo.org/record/1184095) (`doi:10.5281/zenodo.1184095`) which should be sufficient to run the course materials.

- Course VM: [download](https://zenodo.org/record/1184095) ![Zenodo download badge](https://zenodo.org/badge/DOI/10.5281/zenodo.1184095.svg)

The username for this VM is `ibioic` and the password is `ibioic-course`.

We base our VM on the basic `Ubuntu` 16.04 LTS installation, obtained from [this site](http://releases.ubuntu.com/16.04/). The VM image was built and software/materials installed by the course tutors. The system is set by default to use 4GB of the host system RAM, and 128MB of video memory, but this can be modified in the `VirtualBox` software.

## `VirtualBox`

The `VirtualBox` software can be downloaded for your operating system from [this page](https://www.virtualbox.org/wiki/Downloads).

- [`VirtualBox` downloads](https://www.virtualbox.org/wiki/Downloads)

Once you have downloaded the application, please follow the instructions relevant for your system to install.

For the course VM, you will also need to install the VirtualBox Extension Pack, available [here](https://www.virtualbox.org/wiki/Downloads).

### Modifying VM HDD size

Under some circumstances you may find that you need to increase the HDD size, though this should not be necessary to complete the course materials:

* **Shut down the VM**
* **Resize the HDD**: `VBoxManage modifyhd <path_to_vdi> --resize <size_in_MB>`
* **Mount a Ubuntu Live CD on the VM and boot into it**
* **Use `gparted` to resize OS partitions.**

You might also wish to reduce the size of the virtual HDD on your system (without resizing), by writing zeros to unused space, and compressing:

* **On the VM, issue:** `sudo dd if=/dev/zero of=/emptyfile bs=1M` to write zeros in an empty file, then remove the empty file `sudo rm /emptyfile`
* **Shut down the VM**
* **Compact the HDD:** `VBoxManage modifyhd <path_to_vdi> --compact`

#### User logins

Once the users are logged into their accounts, they need to change directory to the repository root, and activate the `conda` environment:

```
$ cd 2018-03-06-ibioic
$ source actvate 2018-03-06-ibioic
```

This will modify the user prompt to reflect the active virtual machine, and from this point all teaching materials should work.

## Installed tools

In addition to the tools that were available with the base VM, we have installed:

### Useful Linux tools

#### `apt-get`

`apt-get` was updated with

```bash
sudo apt-get update
```

and the `aptitude` interface onto `apt-get`:

```bash
sudo apt install aptitude
```

* [`aptitude` wiki page](https://wiki.debian.org/Aptitude)

#### `git`

`git` is required to obtain the most up-to-date version of the course materials.

```bash
sudo apt install git
```

* [`git` homepage](https://git-scm.com/)

#### `openssh-server`

`openssh-server` enables secure remote logins

```bash
sudo apt install openssh-server
```

* [`OPenSSH` homepage](https://www.openssh.com/)

#### `pandoc`

`pandoc` converts markup documents between formats, and is used to produce course output from the markdown source

```bash
sudo apt install pandoc
```

* [`pandoc` homepage](http://pandoc.org/)

#### `whois`

As part of the VM setup, we need the ability to create new users and passwords for them. This requires `mkpasswd`, part of `whois`.

```bash
sudo apt install whois
```

### Bioinformatics packages

#### `Artemis`/`ACT`

`Artemis` and `ACT` are widely-used genome annotation tools.

* [`Artemis` homepage](http://www.sanger.ac.uk/science/tools/artemis)
* [`ACT` homepage](http://www.sanger.ac.uk/science/tools/artemis)

#### `BLAST+`

`BLAST` is the ubiquitious tool used to search for similar sequences in a database. We install a local command-line version.

```bash
sudo aptinstall ncbi-blast+
```

* [`BLAST+` Homepage](https://blast.ncbi.nlm.nih.gov/Blast.cgi?PAGE_TYPE=BlastDocs&DOC_TYPE=Download)
* [`BLAST+` at NCBI](https://blast.ncbi.nlm.nih.gov/Blast.cgi)

#### `clustal omega`

`clustal omega` is a widely-used sequence alignment package

```bash
sudo apt install clustalo
```

* [`clustal omega` homepage](http://www.clustal.org/omega/)
* [`clustal omega` at EMBL-EBI](http://www.ebi.ac.uk/Tools/msa/clustalo/)

#### `HMMer`

`HMMer` is a hidden Markov model-based tools for sequence profile generation and searching against databases.

```bash
sudo apt install hmmer
```

* [`HMMer` homepage](http://hmmer.org/)

#### `Jalview`

`Jalview` is a widely-used sequence alignment visualisation tool

```bash
sudo apt install jalview
```

* [`Jalview` homepage](http://www.jalview.org/)

#### `JMol`

`JMol` is a widely-used structural biology and protein structure visualisation tool

```bash
sudo apt install jmol
```

* [`JMol` homepage](https://www.pymol.org/)


#### `muscle`

`muscle` is a widely-used sequence alignment package

```bash
sudo apt install muscle
```

* [`muscle` homepage](http://drive5.com/muscle/)
* [`muscle` at EMBL-EBI](http://www.ebi.ac.uk/Tools/msa/muscle/) 

#### `pymol`

`pymol` is a widely-used structural biology and protein structure visualisation tool

```bash
sudo apt install pymol
```

* [`pymol` homepage](https://www.pymol.org/)

#### `samtools`

`samtools` is the standard package for converting and manipulating short-read sequencing data

```bash
sudo apt install samtools
```

* [`samtools`](http://samtools.sourceforge.net/)

#### `t-coffee`

`t-coffee` is a widely-used sequence alignment package

```bash
sudo apt install t-coffee
```

* [`t-coffee` homepage](http://www.tcoffee.org/)
* [`t-coffee` at EMBL-EBI](http://www.ebi.ac.uk/Tools/msa/tcoffee/)

#### `VSEARCH`

`VSEARCH` is a fast alternative to `BLAST+`

```bash
sudo apt install vsearch
```

* [`VSEARCH` Homepage](https://github.com/torognes/vsearch)
