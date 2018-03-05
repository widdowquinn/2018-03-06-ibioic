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
for example with ``sudo apt-get install git`` or ``sudo apt install git`` (Debian/Ubuntu) or ``sudo dnf install git`` (Fedora).

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
for Windows users. This provides a consistent environment equivalent to the powerful Linux
and macOS Bash shells.

- `Git Bash video tutorial`_ 

1. Download the `Git for Windows installer`_.
2. Run the installer and follow the steps bellow:
    1. Click on ``Next``.
    2. Click on ``Next``.
    3. Change the editor from default **vim** to use **nano** instead.
    4. **Keep ``Use Git from the Windows Command Prompt`` selected and click on ``Next``**. If you forgot to do this programs that you need for the workshop will not work properly. If this happens rerun the installer and select the appropriate option.
    5. Click on ``Next``.
    6. Click on ``Next``.
    7. **Keep ``Checkout Windows-style, commit Unix-style line endings`` selected and click on ``Next``**.
    8. **Keep ``Use Windows' default console window`` selected and click on ``Next``**.
    9. Click on ``Install``.
    10. Click on ``Finish``.
3. If your ``HOME`` environment variable is not set (or you don't know what this is):
    1. Open command prompt (Open ``Start Menu`` then type ``cmd`` and press the ``[Enter]`` key)
    2. Type the following line into the command prompt window exactly as shown: ``setx HOME "%USERPROFILE%"``
    3. Press ``[Enter]``, you should see ``SUCCESS: Specified value was saved``.
    4. Quit command prompt by typing ``exit`` then pressing ``[Enter]``

This will provide you with both ``git`` and ``bash`` in the ``Git Bash`` program, which you can start
from the Start Menu on your Windows machine.

``git`` should be available in the Git Bash terminal. You can test this by issuing ``git --version``:

.. code-block:: bash
 
    $ git --version
    git version 2.16....

.. _Git Bash video tutorial: https://www.youtube.com/watch?v=339AEqk9c-8
.. _Git downloads page: https://git-scm.com/
.. _Git for Windows installer: https://git-for-windows.github.io/
.. _Git Mavericks list: https://sourceforge.net/projects/git-osx-installer/files/
