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
machine after the course itself is complete. The virtual machine is a "Plan B" that
should be usable on any machine, and is intended as the fallback in case of installation
problems on your own laptop.

.. IMPORTANT::
    You should install all the software and/or the virtual machine before you attend the course.
    This will save you, and everyone else at the course, time at the beginning of the
    first day, and give more time to explore advanced topics in the workshop.

    We will offer an online hangout to help with installation problems, just before the course.
    Your course organiser will provide information about this.

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

If you do not already have `Anaconda`_ installed on your system, please follow the instructions
at the page below:

- :doc:`Anaconda installation <install_anaconda>`

========================================
2. Create a new ``Anaconda`` environment
========================================

``Anaconda`` provides *environments* which allow you to install combinations of Python packages that
remain separate from your main Python installation. We will be using such an *environment* when we
work through the course material.

To create a new environment for this course, called ``2018-03-06-ibioic``, issue the following command
in the appropriate terminal (``Anaconda`` terminal or ``git bash`` on Windows, your ``bash`` terminal
on macOS or Linux):

.. code-block:: bash

    conda create --name 2018-03-06-ibioic python=3.6

To *activate* the environment (make it the environment that you are currently using), issue the following
command in the terminal:

.. code-block:: bash

    source activate 2018-03-06-ibioic

You should see your command prompt change to indicate that you are now using the ``2018-03-06-ibioic``
environment.

To *deactivate* the environment (i.e. to stop using it), issue the following command:

.. code-block:: bash

    source deactivate


===================================
3. Install ``git`` on your computer
===================================

If you do not have a working copy of `git` installed on your machine, install one now by
following instructions at the page below.

- :doc:`git installation <install_git>`

.. NOTE::
    If you are using Windows, you will be installing ``git bash`` which, as well as ``git``,
    provides the Bash *terminal* environment that you will be using during the course. This
    is very similar to working at the terminal in Linux/macOS.


===============================
4. Install the course materials
===============================

You will need to *clone* the course material repository to your own machine.

1. Using the terminal [#f1], navigate to a convenient location (e.g. your ``Desktop``).
Then *clone* the course repository with the command:

.. code-block:: bash

    git clone https://github.com/widdowquinn/2018-03-06-ibioic.git

.. NOTE::
    This will create a new directory called ``2018-03-06-ibioic``, containing the course
    materials.

2. Change to the course material directory in your terminal with the command:

.. code-block:: bash

    cd 2018-03-06-ibioic

==================================
5. Install ``Python`` requirements
==================================

.. ATTENTION::
    In the terminal [#f1] sure that you are in the ``2018-03-06-ibioic`` environment (check your command prompt).
    If not, issue the command ``source activate 2018-03-06-ibioic`` and see that the command
    prompt changes.

1. To install the Python module requirements for the course, issue the command below in the
terminal [#f1]:

.. code-block:: bash

    pip install -r requirements_students.txt


===============================
6. Install third-party software
===============================

``BLAST`` and ``MUSCLE`` do not require ``JAVA``, and can be set up independently:

1. Install ``BLAST``:

- :doc:`Install BLAST <install_blast>`

2. Install ``MUSCLE``:

- :doc:`Install MUSCLE <install_muscle>`

``ARTEMIS``, ``JALVIEW`` and ``JMOL`` require the ``JAVA`` VM, so ``JAVA`` must be installed first:

3. Install ``JAVA``:

- :doc:`Install JAVA <install_java>`

4. Install ``ARTEMIS``:

- :doc:`Install ARTEMIS <install_artemis>`

5. Install ``JALVIEW``:

- :doc:`Install JALVIEW <install_jalview>`

6. Install ``JMOL``

- :doc:`Install JMOL <install_jmol>`


===========================
7. Test the tools/materials
===========================

To make sure that the downloaded tools are installed and working on your machine, please follow
the instructions on the `testing your installation :doc:<testing_installation>` page.

- :doc:`Testing your installation <testing_installation>`


==========================================
8. Install ``VirtualBox`` on your computer
==========================================

``VirtualBox`` is a program that allows you to run *virtual machines* on your own computer.
Virtual machines are software implementations of operating systems that run as if they are
a separate computer.

We have provided a virtual machine pre-loaded with software and course materials, as a
fallback in case of installation difficulties on your own machine. To install the ``VirtualBox``
program, please follow the instructions on the linked page.

- :doc:`Install VirtualBox <install_virtualbox>`


=================================================
9. Download and import the course virtual machine
=================================================

We provide a Linux virtual machine pre-loaded with course materials and the required software,
which can be used to participate in the workshop.

.. ATTENTION::
    The virtual machine file is very large (11GB) and should be downloaded well in advance
    of the workshop, if you think you may need to use it!

1. Click on the badge below to go to the virtual machine download page:

.. image:: https://zenodo.org/badge/DOI/10.5281/zenodo.1184095.svg
   :target: https://zenodo.org/record/1184095

2. Click on the link for ``2018-03-06-ibioic.vdi`` to download the virtual machine in a suitable location.

.. WARNING::
    This may take some time to download!

3. Click on the link for ``2018-03-06-ibioic.vbox`` to download the ``VirtualBox`` file in the
**same location** as the ``.vdi`` file.

4. Add the virtual machine.

- Click on ``Machine`` in the ``VirtualBox`` menu bar
- Click on ``Add``
- Navigate to the ``.vbox`` file you just downloaded, and select it
- Click on ``Open``

You should see the ``2018-03-06-ibioic`` machine in the list at the left hand side
of the application.

4. Start the virtual machine.

- Select the new IBioIC virtual machine (``2018-03-06-ibioic``)
- Click on the ``Start`` button in ``VirtualBox``

The virtual machine will start as a new window, and appear to be booting up. When
this process is complete, it will present you with a login screen. Use the following
credentials to log in:

- Username: ``ibioic``
- Password: ``ibioic-course``

On successful login, you will see a standard Ubuntu desktop, and will be ready to
begin the course.



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

.. [#f1]: The *terminal* means ``git bash`` on Windows, and Bash on Linux/macOS.