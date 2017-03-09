#!/usr/bin/env bash
#
# copy_repo.sh
#
# Short helper script to set up generic users for the IBioIC VM.
#
# Usernames and passwords are read from the file users.txt, which contains
# entries in the format:
#
# user1,password1
# user2,password2
#
# Run this script as su/with sudo to copy the teaching material repository
# from the ibioic account to each user home directory
#
# sudo create_users.sh > create_users.log

for udetails in `cat users.txt`
do
    user=`echo $udetails | cut -f 1 -d ,`
    cpcmd="cp -R /home/ibioic/Teaching-IBioIC-Intro-to-Bioinformatics \
           /home/${user}"
    echo ${cpcmd}
    ${cpcmd}
done
