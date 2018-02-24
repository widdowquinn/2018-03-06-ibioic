#!/usr/bin/env bash
#
# install-apps.sh
#
# If run as sudo, this script should install application dependencies
# in the virtual machine

# Update package management
apt-get update
apt install -y aptitude

# Version control
apt install -y git

# SSH access
apt install -y openssh-server

# Markdown conversion
apt install -y pandoc

# Visualisation tools
apt install -y artemis jmol pymol jalview

# Sequence search/alignment packages
apt install -y ncbi-blast+ clustalo hmmer muscle t-coffee

# Command line tools
apt install -y curl
