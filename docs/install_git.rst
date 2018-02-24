:orphan:

.. ibioic_install_git:


==================
Installing ``GIT``
==================


--------------------------
Linux ``git`` installation
--------------------------

``git`` should be available in the terminal for your distribution. You can test this by issuing ``git --version``:

.. code-block:: bash

    $ git --version
    git version 2.15.0

If it is not available already, then you should try installing ``git`` from your distribution's package manager,
for example with ``sudo apt-get install git`` (Debian/Ubuntu) or ``sudo dnf install git`` (Fedora).

--------------------------
macOS ``git`` installation
--------------------------

``git`` should be available in the terminal. You can test this by issuing ``git --version``:

.. code-block:: bash
 
    $ git --version
    git version 2.15.0

If it is not available, then you should install the most recent version of the ``mavericks`` installer
from the `Git Mavericks list`_

----------------------------
Windows ``git`` installation
----------------------------

If not installed already, we recommend the use of the ``Git Bash`` shell throughout the course,
for Windows users.

- `Git Bash video tutorial`_ 

1. Download the `Git for Windows installer`_.
2. Run the installer and follow the steps bellow:
    1. Click on ``Next``.
    2. Click on ``Next``.
    3. **Keep ``Use Git from the Windows Command Prompt`` selected and click on ``Next``**. If you forgot to do this programs that you need for the workshop will not work properly. If this happens rerun the installer and select the appropriate option.
    4. Click on ``Next``.
    5. **Keep ``Checkout Windows-style, commit Unix-style line endings`` selected and click on ``Next``**.
    6. **Keep ``Use Windows' default console window`` selected and click on ``Next``**.
    7. Click on ``Install``.
    8. Click on ``Finish``.
3. If your ``HOME`` environment variable is not set (or you don't know what this is):
    1. Open command prompt (Open ``Start Menu`` then type ``cmd`` and press the ``[Enter]`` key)
    2. Type the following line into the command prompt window exactly as shown: ``setx HOME "%USERPROFILE%"``
    3. Press ``[Enter]``, you should see ``SUCCESS: Specified value was saved``.
    4. Quit command prompt by typing ``exit`` then pressing ``[Enter]``

This will provide you with both ``git`` and ``bash`` in the ``Git Bash`` program.


.. _Git Bash video tutorial: https://www.youtube.com/watch?v=339AEqk9c-8
.. _Git downloads page: https://git-scm.com/
.. _Git for Windows installer: https://git-for-windows.github.io/
.. _Git Mavericks list: https://sourceforge.net/projects/git-osx-installer/files/