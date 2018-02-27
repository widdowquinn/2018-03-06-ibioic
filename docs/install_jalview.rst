:orphan:

.. ibioic_install_jalview:

======================
Installing ``JALVIEW``
======================

.. WARNING::
    ``JALVIEW`` requires ``JAVA`` (:doc:`installation instructions <install_java>`)

We use the sequence alignment viewer `JALVIEW`_ at several points in the course. This can be
installed as follows:

------------------------
Linux/macOS installation
------------------------

`JALVIEW`_ is available through `Bioconda`_ (which was set up above):

.. code-block:: bash

    conda install jalview

Alternatively, on macOS you can also download the installer ``.dmg`` file, open it and follow the instructions:

- `JALVIEW installer for macOS <http://www.jalview.org/Web_Installers/InstData/MacOSX/install-jalview-novm.dmg>`_

--------------------
Windows installation
--------------------

`JALVIEW`_ is not available through `Bioconda`_ so we will install it from the authors' website:

1. Open http://www.jalview.org/Web_Installers/install.htm with your web browser.
2. Download the installer for Windows which does not include the Java VM (i.e. the smaller file)
3. After downloading, double-click ``install-jalview.exe``

.. _Bioconda: https://bioconda.github.io/
.. _JALVIEW: http://www.jalview.org/
