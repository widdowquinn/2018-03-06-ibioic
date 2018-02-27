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

`MUSCLE`_ is available through `Bioconda`_ (which should already be set up on your machine):

.. code-block:: bash

    conda install muscle

--------------------
Windows installation
--------------------

At the time of writing, `MUSCLE`_ is not available through `Bioconda`_ for Windows.

1. Open http://drive5.com/muscle/downloads.htm with your web browser.
2. Download the latest Windows Intel i86 binary, currently ``muscle3.8.31_i86win32.exe``. This will be placed in your ``Downloads`` directory.
3. In ``git bash`` change to your home directory with the command ``cd``.
4. Create a new directory called ``bin`` with the command ``mkdir bin``.
5. Copy the ``MUSCLE`` program to this new directory with the command ``cp Downloads/muscle3.8.31_i86win32.exe bin/muscle.exe``. This creates a new command called ``muscle`` which runs the alignment program.
6. Test that the program can be run by executing the command ``muscle`` in the terminal.

In total, the sequence of commands will be:

.. code-block:: bash

    $ cd
    $ mkdir bin
    $ cp Downloads/muscle3.8.31_i86win32.exe bin/muscle.exe
    $ muscle

.. NOTE::
    The ``$`` sign should not be typed - this indicates the command prompt you will see
    on your screen.

.. _Bioconda: https://bioconda.github.io/
.. _MUSCLE: https://www.drive5.com/muscle/downloads.htm
