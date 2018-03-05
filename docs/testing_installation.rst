.. _ibioic_testing_installation:

***************************
Testing the Installed Tools
***************************

You would have tested some of these during the installation, but just in case, we'll recap. Note that the exact version numbers need not match perfectly.

1. Open a terminal window (Git Bash on Windows)
2. Confirm Conda is installed by running:

.. code-block:: bash

    $ conda --version
    conda 4.4.10

3. Confirm Git is installed by running:

.. code-block:: bash

    $ git --version
    git version 2.16.2.windows.1

4. Confirm Python 3 from Anaconda is installed by running:

.. code-block:: bash

    $ python --version
    Python 3.6.4 :: Anaconda, Inc.

5. Confirm the Python libraries we will be using are installed by running:

.. code-block:: bash

    $ python -c "import Bio; import bioservices; import seaborn; import reportlab"


6. Confirm Muscle is installed by running:

.. code-block:: bash

    $ muscle -version
    MUSCLE v3.8.31 by Robert C. Edgar

7. Confirm NCBI BLAST+ is installed by running:

.. code-block:: bash

    $ blastn -v
    USAGE
      blastn [-h] [-help] ...

8. You should have already tested that the Java applications can start.
