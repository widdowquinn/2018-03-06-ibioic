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

## `VirtualBox` local networking, and `ssh`

For deployment testing, `openssh-server` is installed on the VM, and the networking is configured as follows:

### On the host OS

```
VirtualBox -> Settings -> Network -> Add
VM Settings -> System -> check "Enable I/O APIC"
VM Settings -> Network -> Adapter 2 -> Host-only -> vboxnet0
```

The first action creates a new virtual network which will mediate between the VM and the host OS, called `vboxnet0`. The second and third actions configure a second network adapter on the VM, which will be used to connect to `vboxnet0`

If the configuration is successful, issuing `ifconfig` in a terminal on the host OS will show an interface called `vboxnet0`

### On the guest OS

The `/etc/network/interfaces` file was edited to append the new interface:

```
auto enp0s8
iface enp0s8 inet static
address 192.168.56.101
netmask 255.255.255.0
```

The interface was restarted with `sudo ifup enp0s8`, and it was then possible to `ssh` into the VM.

### `Xforwarding` graphical applications

`Xforwarding` was tested using `XQuartz` in the OSX terminal. 

```
$ ssh -XC ibioic@192.168.56.101
ibioic@192.168.56.101's password: 
Welcome to Ubuntu 16.10 (GNU/Linux 4.8.0-39-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

0 packages can be updated.
0 updates are security updates.
```

## Installed tools

In addition to the tools that were available with the base VM, we have installed:

### Useful Linux tools

#### `apt-get`

`apt-get` was updated with

```
sudo apt-get update
```

and the `aptitude` interface onto `apt-get`:

```
sudo apt-get install aptitude
```

* [`aptitude` wiki page](https://wiki.debian.org/Aptitude)

#### `git`

`git` is required to obtain the most up-to-date version of the course materials.

```
sudo apt-get install git
```

* [`git` homepage](https://git-scm.com/)

#### Google Chrome

This is our preferred browser for the course. The installation file for `google-chrome-stable` was downloaded from Google and installed directly.


#### `openssh-server`

`openssh-server` enables secure remote logins

```
sudo apt-get install openssh-server
```

* [`git` homepage](https://git-scm.com/)
* 

### Bioinformatics packages

#### `Artemis`/`ACT`

`Artemis` and `ACT` are widely-used genome annotation tools.

* [`Artemis` homepage](http://www.sanger.ac.uk/science/tools/artemis)
* [`ACT` homepage](http://www.sanger.ac.uk/science/tools/artemis)


#### `BLAST+`

`BLAST` is the ubiquitious tool used to search for similar sequences in a database. We install a local command-line version.

```
sudo apt-get install ncbi-blast+
```

* [`BLAST+` Homepage](https://blast.ncbi.nlm.nih.gov/Blast.cgi?PAGE_TYPE=BlastDocs&DOC_TYPE=Download)
* [`BLAST+` at NCBI](https://blast.ncbi.nlm.nih.gov/Blast.cgi)

#### `clustal omega`

`clustal omega` is a widely-used sequence alignment package

```
sudo apt-get install clustalo
```

* [`clustal omega` homepage](http://www.clustal.org/omega/)
* [`clustal omega` at EMBL-EBI](http://www.ebi.ac.uk/Tools/msa/clustalo/)

#### `HMMer`

`HMMer` is a hidden Markov model-based tools for sequence profile generation and searching against databases.

```
sudo apt-get install hmmer
```

* [`HMMer` homepage](http://hmmer.org/)

#### `JMol`

`JMol` is a widely-used structural biology and protein structure visualisation tool

```
sudo apt-get install jmol
```

* [`JMol` homepage](https://www.pymol.org/)


#### `muscle`

`muscle` is a widely-used sequence alignment package

```
sudo apt-get install muscle
```

* [`muscle` homepage](http://drive5.com/muscle/)
* [`muscle` at EMBL-EBI](http://www.ebi.ac.uk/Tools/msa/muscle/) 

#### `python`

We install Python 3.6, including development libraries, and the virtual environment creation and management tool `virtualenv`.

```
sudo apt-get install python3.6
sudo apt-get install python3.6-dev
```

```
sudo apt-get install virtualenv
```

* [`python` homepage](https://www.python.org/)
* [`virtualenv` docs](https://virtualenv.pypa.io/en/stable/)
* [introduction to virtual environments for non-programmers](https://www.dabapps.com/blog/introduction-to-pip-and-virtualenv-python/)
* [basic use of virtual environments](http://docs.python-guide.org/en/latest/dev/virtualenvs/)


#### `pymol`

`pymol` is a widely-used structural biology and protein structure visualisation tool

```
sudo apt-get install pymol
```

* [`pymol` homepage](https://www.pymol.org/)

#### `samtools`

`samtools` is the standard package for converting and manipulating short-read sequencing data

```
sudo apt-get install samtools
```

* [`samtools`](http://samtools.sourceforge.net/)


#### `Tablet`

Tablet is a widely-used sequence assembly visualisation tool. The installer was downloaded from JHI.

* [`tablet` homepage](https://ics.hutton.ac.uk/tablet/)

#### `t-coffee`

`t-coffee` is a widely-used sequence alignment package

```
sudo apt-get install t-coffee
```

* [`t-coffee` homepage](http://www.tcoffee.org/)
* [`t-coffee` at EMBL-EBI](http://www.ebi.ac.uk/Tools/msa/tcoffee/)