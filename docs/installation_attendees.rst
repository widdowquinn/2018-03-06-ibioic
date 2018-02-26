.. _ibioic_installation_attendees:

*********************************
Installation for Course Attendees
*********************************

This document will describe the process for setting up and testing course materials,
in preparation for attendance at the workshop.

Two setups are described:

1. Installation on your local machine
2. Download and use of a Linux virtual machine

We prefer that attendees install materials on their own laptops for the course, as the
software and learning materials will then persist and be usable/re-usable on your own
machine after the course itself. The virtual machine is a "Plan B" that should be
workable on any machine, and is intended as the fallback in case of installation
problems.

.. IMPORTANT::
    You should install all the software and/or the virtual machine before you attend the course.
    This will save you, and everyone else at the course, time at the beginning of the
    first day, and give more time to explore advanced topics in the workshop.

The process of installing the required software on your machine is as follows:

1. Install ``Anaconda`` on your computer (if it is not already present).
2. Create a new ``Anaconda`` environment.
3. Install ``git`` on your computer (if it is not already present).
4. Obtain the course materials.
5. Install ``Python`` requirements.
6. Install third-party software tools.
7. Test the installation.

The process of installing the virtual machine is as follows:

8. Install ``VirtualBox`` on your computer.
9. Download the course virtual machine.


========================================
1. Install ``Anaconda`` on your computer
========================================

For ease of installation and consistency, we install as much as is practical using the
`Anaconda`_ environment. This is cross-platform on Windows, macOS and Linux, and provides
several essential components for the course, such as `Python`_ and the common `Jupyter`_
notebook interface that will be used.

.. NOTE::
    If you do not already have `Anaconda`_ installed on your system, please follow the instructions:


- :doc:`Anaconda installation <install_anaconda>`

========================================
2. Create a new ``Anaconda`` environment
========================================


===================================
3. Install ``git`` on your computer
===================================

If you do not have a working copy of `git` installed on your machine, install one now.

- :doc:`git installation <install_git>`


===============================
4. Install the course materials
===============================

You should clone the course material repository to your own machine, with the command:

.. code-block:: bash

    git clone <REPOSITORY URL>

where `<REPOSITORY URL>` is the repository you have just imported.

Finally, change directory to the root of the new repository.


==================================
5. Install ``Python`` requirements
==================================

.. code-block:: bash

    pip install -r requirements_students.txt


===============================
6. Install third-party software
===============================

``BLAST`` and ``MUSCLE`` do not require ``JAVA``, and can be set up independently:

- :doc:`Install BLAST <install_blast>`
- :doc:`Install MUSCLE <install_muscle>`

``ARTEMIS``, ``JALVIEW`` and ``JMOL`` require the ``JAVA`` VM, so ``JAVA`` must be installed first:

- :doc:`Install JAVA <install_java>`
- :doc:`Install ARTEMIS <install_artemis>`
- :doc:`Install JALVIEW <install_jalview>`
- :doc:`Install JMOL <install_jmol>`


=====================
7. Test the materials
=====================



==========================================
8. Install ``VirtualBox`` on your computer
==========================================


======================================
9. Download the course virtual machine
======================================




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