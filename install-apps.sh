#!/usr/bin/env bash
#
# install-apps.sh
#
# If run as sudo, this script should install application dependencies
# in the virtual machine

# Update package management
apt-get update
apt-get install -y aptitude

# Version control
apt-get install -y git

# Browser
apt-get install -y google-chrome

# SSH access
apt-get install -y openssh-server

# Markdown conversion
apt-get install -y pandoc

# Visualisation tools
apt-get install -y act artemis jmol pymol

# Sequence search/alignment packages
apt-get install -y ncbi-blast+ clustalo hmmer muscle t-coffee

# Programming tools
apt-get install -y python3.6 python3.6-dev virtualenv
