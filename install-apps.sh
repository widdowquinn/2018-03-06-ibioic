#!/usr/bin/env bash
#
# install-apps.sh
#
# If run as sudo, this script should install application dependencies
# in the virtual machine

# Update package management
apt-get update
apt-get install aptitude

# Version control
apt-get install git

# Browser
apt-get install google-chrome

# SSH access
apt-get install openssh-server

# Markdown conversion
apt-get install pandoc

# Visualisation tools
apt-get install act artemis jmol pymol

# Sequence search/alignment packages
apt-get install ncbi-blast+ clustalo hmmer muscle t-coffee

# Programming tools
apt-get install python3.6 python3.6-dev virtualenv
