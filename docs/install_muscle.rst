:orphan:

.. ibioic_install_muscle:

=====================
Installing ``MUSCLE``
=====================

We use the sequence alignment tool `MUSCLE`_ in one section of the course. This can be
installed as follows:

------------------------
Linux/macOS installation
------------------------

`MUSCLE`_ is available through `Bioconda`_ (which was set up above):

.. code-block:: bash

    conda install muscle

--------------------
Windows installation
--------------------

At the time of writing, `MUSCLE`_ is not available through `Bioconda`_.

1. Open http://drive5.com/muscle/downloads.htm with your web browser.
2. Download the latest Windows	Intel i86 binaary, currently ``muscle3.8.31_i86win32.exe``

.. DANGER::
    TODO

We need some final installation instructions over where to put the
executable file to ensure it is on the system ``PATH`` for later use.

.. _Bioconda: https://bioconda.github.io/
.. _MUSCLE: https://www.drive5.com/muscle/downloads.htm
