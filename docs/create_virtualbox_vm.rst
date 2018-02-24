:orphan:

.. ibioic_create_virtualbox_vm:

========================================
Create a new ``VirtualBox`` course image
========================================

This page will guide you through the process of creating a blank `VirtualBox` ``Ubuntu`` image,
ready to load with course materials and supporting software.

------------------------
Download an Ubuntu image
------------------------

- `Ubuntu downloads <https://www.ubuntu.com/download/desktop>`_

From the `Ubuntu`_ download page, obtain an ``.iso`` installation image for the most recent
LTS (long-term support) version of the operating system, and make a note of its location.

At the time of writing, this is a 1.5GB download for ``Ubuntu 16.04.3``.

---------------
Creating the VM
---------------

.. NOTE::
    You may be asked to install or upgrade the ``VirtualBox Extension Pack``. If this is the case,
    accept all the suggestions to install and enter your password where appropriate. This pack
    will enable the virtual machine to interact with your system more smoothly.

1. Start the ``VirtualBox`` application in the appropriate way for your system.
2. Click on the ``New`` icon at the top left of the window
3. Enter a name for the image (this should reflect your repository name), select ``Linux`` for the ``Type:`` and ``Ubuntu (64-bit)`` for the ``Version:``. Click ``Continue``.
4. Select ``4096MB`` of RAM. Click ``Continue``.
5. Accept the default option (``Create a virtual hard disk now``) and change the size to 20.00GB. Click ``Create``.
6. Accept the default option of ``VDI (VirtualBox Disk Image)`` and click ``Continue``.
7. Accept the default option of ``Dynamically allocated`` and click ``Continue``.
8. Accept the default location, and click ``Create``.

It will take a few seconds for the VM to be created. The new virtual machine will appear on the left-hand sidebar
as ``Powered Off``.

-----------------
Installing the OS
-----------------

1. Double-click the new course VM you just created.
2. You will be asked to select a virtual optical disk or physical disk containing installation media. Use
    the folder icon to navigate to the location of the ``Ubuntu`` ``.iso`` file you downloaded and select
    it. Then click ``Open``. Click ``Start`` to begin the installation process.
3. Follow through the instructions from the installer.
4. Choose an appropriate language and ``Install Ubuntu``
5. Select ``Download updates while installing Ubuntu`` and ``Install third-party software for graphics and Wi-Fi hardware, Flash, MP3 and other media``. Click ``Continue``.
6. Select ``Erase disk and install Ubuntu``. Click ``Install Now``. Click ``Continue`` to accept the disk changes.
7. Select a location and click ``Continue``.
8. Select an appropriate language and keyboard, and click ``Continue``
9. Fill in identity information: ``Your name: IBioIC Student``; ``Your computer's name: ibioic-VirtualBox``; ``Pick a username: ibioic``; ``Choose a password: ibioic-course``. Click ``continue``. 
10. Installation takes a wee while. When it completes, click ``Restart Now``. Press ``[ENTER]`` when prompted, and wait for the system to reboot.
11. When the VM come back up, enter the student password and log in.
12. Clean up the interface by removing unnecessary items from the Ubuntu sidebar/launcher (Amazon, LibreOffice, etc.)
13. Shut down the VM.


----------------
Configure the VM
----------------

1. With the course VM not running, click on the ``Settings`` icon.
2. Select ``Display`` and increase ``Video Memory`` to 128MB. Click ``OK``
3. Select ``General`` and change ``Shared Clipboard`` to ``Bidirectional``. Click ``OK``.
4. Restart the VM.
5. Log in as the ``ibioic`` user.
6. Start a terminal window and lock the ``terminal`` to the launcher sidebar (right click on the icon and select ``Lock to Launcher``).
7. Install ``git`` (:doc:`installation instructions <install_git>`; ``sudo apt install git``).
8. Clone the current repository to the VM with ``git clone <REPOSITORY>``
9. Change directory to the course repository
10. Install the course tools with ``sudo ./install-apps.sh``
11. Install `Anaconda`_ (:doc:`installation instructions <install_anaconda>`).


.. _Ubuntu: https://www.ubuntu.com