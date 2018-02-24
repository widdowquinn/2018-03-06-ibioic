.. _ibioic_installation_tutors:

***********************
Installation for Tutors
***********************

This document will describe the process for setting up and testing course materials,
in preparation for delivery to a class.

Two setups are described:

1. Installation on the local machine
2. Installation on a Linux virtual machine

We prefer that students install materials on their own laptops for the course, as the
software and learning materials will then persist and be usable/re-usable after the course
itself. The virtual machine approach is a "Plan B" backup option that should be
workable on any machine, and is intended as the fallback in case of severe installation
problems.

.. IMPORTANT::
    Each new course presentation should be prepared in its own repository. Following the practice of
    `The Carpentries`_ we have adopted the convention of naming the course repository
    by date as ``YYYY-MM-DD-ibioic``.

The process of installation for course preparation for tutors is as follows:

1. Prepare a repository for your presentation (this may already have been done by a colleague)
2. Create a new `VirtualBox`_ VM for the course
3. Clone the repository to your machine (your laptop, and the VM)
4. Prepare a virtual machine for the course
5. Install required software for the course
6. Test the materials
7. Upload the working VM to `Zenodo`_


===========================
1. Prepare a new repository
===========================

.. NOTE::
    If one of your colleagues has already created/imported a repository for your presentation,
    you can skip this part.


When creating a new repository for a new course presentation, please use the
`GitHub Importer`_ and provide an existing repository URL to build from, rather
than forking an existing repository.

1. Log in to `GitHub`_
2. In the upper right-hand corner of any page, click ``+`` and then ``Import Repository``
3. Provide the URL of a previous IBioIC training course repository
4. Choose an account or organisation to own the repository
5. Choose a name for the repository (``YYYY-MM-DD-ibioic`` works for us)
6. Specify that the repository should be *public* 
7. Click on ``Begin Import``
8. You will receive an email informing you when the repository has been imported
9. Inform the other tutors about the repository and/or invite them as collaborators

================================
2. Create a new `VirtualBox`_ VM
================================

If it is not already available, download and install `VirtualBox`_ on your machine. This is a
free-to-use general-purpose full virtualizer for x86 hardware, capable of running a virtual
machine for use by students on the course.

.. TIP::
    The virtual machine for the course may be large, so can be prepared for download by the
    students well in advance,and include a working `git` installation, so the student can
    pull an up-to-date copy of the course materials during the course. What is important is
    that the supporting software are available and can be run on the student's machine

- :doc:`VirtualBox installation <install_virtualbox>`

Once `VirtualBox`_ is installed, create a new ``Ubuntu`` VM with the same name as your repository
for the course presentation.

- :doc:`Create VirtualBox VM <create_virtualbox_vm>`


=======================================
3. Clone the repository to your machine
=======================================

.. ATTENTION::
    These instructions should be followed to reproduce the repository and required software
    on both the `VirtualBox`_ VM prepared above, and on your own machine

.. WARNING::
    If you do not have a working copy of `git` installed on your machine, install one now.
    This will be required to maintain and publish your repository materials.

- :doc:`git installation <install_git>`

You should clone the repository to your own machine, with the command:

.. code-block:: bash

    git clone <REPOSITORY URL>

where `<REPOSITORY URL>` is the repository you have just imported.

Finally, change directory to the root of the new repository.



=====================================================
4. Prepare a ``conda`` virtual machine for the course
=====================================================

For ease of installation and consistency, we install as much as is practical using the
`Anaconda`_ environment. This is cross-platform on Windows, macOS and Linux, and provides
several essential components for the course, such as `Python`_ and the common `Jupyter`_
notebook interface that will be used.

.. NOTE::
    If you do not already have `Anaconda`_ installed on your system, please follow the instructions:


- :doc:`Anaconda installation <install_anaconda>`


---------------------------------
Create a new Anaconda environment
---------------------------------

With `Anaconda`_ installed, create a new environment with:

.. code-block:: bash

    conda create --name <ENVIRONMENT_NAME> python=3.6

Accept all the installation options presented.

.. TIP::
    We recommend naming your environment after your repository, using something like
    ``2018-03-06-ibioic`` as your ``<ENVIRONMENT_NAME>``

Then, activate the environment with

.. code-block:: bash

    source activate <EVIRONMENT_NAME>

You should see your terminal prompt change to include the environment name. This is a reminder that you are working within the specific `Anaconda`_ environment for the course materials.

Some tools are useful to us as tutors, for preparing and managing the course materials. These
are specified in the file `requirements_tutors.txt`, and should be installed now with the
command:

.. code-block:: bash

    pip install -r requirements_tutors.txt


===========================================
5. Install required software for the course
===========================================

We prefer that students use their own laptops for course delivery, and we aim to match
the students' installation experience here, as closely as possible.

-------------------
Python dependencies
-------------------

Although we could install most of the python requirements with `Anaconda`_, some of the
packages are not available on Windows with this approach, so we install using ``pip``
instead:

.. code-block:: bash

    pip install -r requirements_students.txt

--------------------
Third-party software
--------------------

``BLAST`` and ``MUSCLE`` do not require ``JAVA``, and can be set up independently:

- :doc:`Install BLAST <install_blast>`
- :doc:`Install MUSCLE <install_muscle>`

``ARTEMIS``, ``JALVIEW`` and ``JMOL`` require the ``JAVA`` VM, so ``JAVA`` must be installed first:

- :doc:`Install JAVA <install_java>`
- :doc:`Install ARTEMIS <install_artemis>`
- :doc:`Install JALVIEW <install_jalview>`
- :doc:`Install JMOL <install_jmol>`


=====================
6. Test the materials
=====================


=============================
7. Upload the VM to `Zenodo`_
=============================



.. _Anaconda: http://continuum.io/downloads
.. _Anaconda Video Tutorial (macOS): https://www.youtube.com/watch?v=TcSAln46u9U
.. _Anaconda Video Tutorial (Windows): https://www.youtube.com/watch?v=xxQ0mzZ8UvA
.. _ARTEMIS: http://www.sanger.ac.uk/science/tools/artemis
.. _Bioconda: https://bioconda.github.io/
.. _BLAST: ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/
.. _Git Bash video tutorial: https://www.youtube.com/watch?v=339AEqk9c-8
.. _Git downloads page: https://git-scm.com/
.. _Git for Windows installer: https://git-for-windows.github.io/
.. _Git Mavericks list: https://sourceforge.net/projects/git-osx-installer/files/
.. _GitHub: https://github.com
.. _GitHub Importer: https://help.github.com/articles/importing-a-repository-with-github-importer/
.. _JALVIEW: http://www.jalview.org/
.. _JMOL: http://jmol.sourceforge.net/
.. _MUSCLE: https://www.drive5.com/muscle/downloads.htm
.. _Jupyter: https://jupyter.org/
.. _Python: https://www.python.org/
.. _The Carpentries: https://www.facebook.com/carpentries/
.. _VirtualBox: https://www.virtualbox.org/wiki/Downloads