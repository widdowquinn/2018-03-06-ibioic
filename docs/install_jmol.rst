:orphan:

.. ibioic_install_jmol:

===================
Installing ``JMOL``
===================

.. WARNING::
    ``JMOL`` requires ``JAVA`` (:doc:`installation instructions <install_java>`)

We use the protein structure viewer `JMOL`_ in the course. This can be installed following the
`instructions <http://jmol.sourceforge.net/download/>`_ on the `JMOL`_ website.

-------------
Download JMOL
-------------

`JMOL`_ is provided as a single ``JAVA`` application for all operating systems. To download it,
click on the link below.

- ``JMOL`` `latest version <http://sourceforge.net/projects/jmol/files/latest/download?source=files>`_

Clicking on the link above should download a ``.zip`` or ``.tar.gz`` file, which can be extracted,
producing a directory containing the ``JMOL`` application.

----------------
Running ``JMOL``
----------------

To start ``JMOL``, open the parent directory in your file explorer (e.g. ``Finder`` on macOS), and
double-click on the ``jmol.jar`` file.

.. NOTE::
    On macOS you may not be permitted to run this executable, as the program is not signed. If this is
    the case, open ``System Preferences -> Security & Privacy`` and click on the ``General`` tab. In
    the lower section of the window, you should see an option to trust the file ``jmol.jar``. Accept
    this offer. As soon as you do this, ``JMOL`` should start.

Alternatively, you can start ``JMOL`` from the command-line. Navigate to the directory containing
``jmol.jar`` and issue the following command:

.. code-block:: bash

    java -jar jmol.jar

The splash screen should appear, and the application should start.


.. _JMOL: http://jmol.sourceforge.net/