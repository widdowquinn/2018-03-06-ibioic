:orphan:

.. ibioic_install_artemis:

======================
Installing ``ARTEMIS``
======================

.. WARNING::
    ``ARTEMIS`` requires ``JAVA`` (:doc:`installation instructions <install_java>`)

We use the genome browser and editor `ARTEMIS`_ at several points in the course. This can be
installed following the instructions in the
`ARTEMIS manual <ftp://ftp.sanger.ac.uk/pub/resources/software/artemis/artemis.pdf>`_,
or as described below:

------------------
macOS installation
------------------

The latest version of Artemis is available as a ``.dmg`` installer:

- `Artemis installer <ftp://ftp.sanger.ac.uk/pub/resources/software/artemis/artemis.dmg.gz>`_

To install, download the file, uncompress it on your machine, and follow the instructions.

------------------
Linux installation
------------------

The Linux version of `ARTEMIS`_ is available as a compressed ``.tar.gz`` file:

- `Artemis for Linux <ftp://ftp.sanger.ac.uk/pub/resources/software/artemis/artemis.tar.gz>`_

This can be downloaded and extracted to produce the ``artemis/`` directory structure. This can be
moved a suitable location (e.g. your home directory) with:

.. code-block:: bash

    mv ./artemis ~/artemis

and the ``artemis`` program added to ``${PATH}`` with:

.. code-block:: bash

    export PATH=${PATH}:~/artemis/

To make this change persist in your system, you should add this line (``export PATH=…``) to your ``~/.bash_profile`` file.

--------------------
Windows installation
--------------------

Download the `ARTEMIS`_ ``.jar`` file:

- `Artemis for Windows <ftp://ftp.sanger.ac.uk/pub/resources/software/artemis/artemis.jar>`_

and place it somewhere accessible (e.g. your Desktop).

To start `ARTEMIS`_, double-click on the ``artemis.jar`` file.



.. _ARTEMIS: http://www.sanger.ac.uk/science/tools/artemis
