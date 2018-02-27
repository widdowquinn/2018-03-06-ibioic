:orphan:

.. ibioic_install_anaconda:

=======================
Installing ``Anaconda``
=======================

-------------------------------
Linux ``Anaconda`` installation
-------------------------------

1. Open http://continuum.io/downloads with your web browser.
2. Download the Python 3 64-bit installer for Linux.
3. Open a terminal window.
4. Type ``bash Anaconda3-`` and then press ``tab``. The name of the file you just downloaded should appear. If it does not, navigate to the folder where you downloaded the file, for example with: ``cd ~/Downloads``. Then, try again.
5. Press ``[Enter]``. You will follow the text-only prompts. To move through the text, press the ``[space]`` key. Type ``yes`` and press ``[Enter]`` to approve the license. Press ``[Enter]`` to approve the default location for the files. Type ``yes`` and press ``[Enter]`` to prepend Anaconda to your ``${PATH}`` (this makes the `Anaconda`_ distribution the default `Python`_).
6. Close the terminal window.

-------------------------------
macOS ``Anaconda`` installation
-------------------------------

- `Anaconda Video Tutorial (macOS)`_python

1. Open http://continuum.io/downloads with your web browser.
2. Download and run the Python 3 installer for OS X.
3. Install Python 3 using all of the defaults for installation.

---------------------------------
Windows ``Anaconda`` installation
---------------------------------

- `Anaconda Video Tutorial (Windows)`_

1. Open http://continuum.io/downloads with your web browser.
2. Download and run the Python 3 installer for Windows.
3. Install Python 3 using defaults for installation **except**
    - make sure to check **Add Anaconda to my PATH environment variable** (this is required to work with ``git bash``)
    - make sure to check **Register Anaconda as my default Python 3.6**.

.. WARNING::
    You **must** select the ``Register Anaconda as my default Python 3.6`` option on Windows.


-----------------
Post-installation
-----------------

We need to add some `Anaconda`_ channels, which is done by issuing the following commands
in the terminal [#f1]_:

.. code-block:: bash

    conda config --add channels defaults
    conda config --add channels conda-forge
    conda config --add channels bioconda


-------------------------------------------------
Starting the ``Anaconda`` terminal (Windows-only)
-------------------------------------------------

Once ``Anaconda`` has been installed, you can start a terminal that "sees" the ``Anaconda`` Python
installation as follows:

1. Click on the ``Start``/``Windows`` menu
2. Go to ``Anaconda``
3. Scroll down (if necessary) to ``Anaconda Prompt``
4. Click on ``Anaconda Prompt``

This will give you a terminal window where you can run the commands to install Python modules and
create ``conda`` environments.



.. _Anaconda: http://continuum.io/downloads
.. _Anaconda Video Tutorial (macOS): https://www.youtube.com/watch?v=TcSAln46u9U
.. _Anaconda Video Tutorial (Windows): https://www.youtube.com/watch?v=xxQ0mzZ8UvA
.. _Python: https://www.python.org/

.. [#f1]: The *terminal* means either your ``bash`` terminal (macOS/Linux), or the ``Anaconda`` prompt/``git bash`` terminal (Windows)