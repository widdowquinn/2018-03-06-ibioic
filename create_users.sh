#!/usr/bin/env bash
#
# create_users.sh
#
# Short helper script to set up generic users for the IBioIC VM.
#
# Usernames and passwords are read from the file users.txt, which contains
# entries in the format:
#
# user1,password1
# user2,password2
#
# Run this script as su/with sudo to create the users:
#
# sudo create_users.sh > create_users.log

for udetails in `cat users.txt`
do

    user=`echo $udetails | cut -f 1 -d ,`
    pass=`echo $udetails | cut -f 2 -d ,`
    cmd="useradd -p `mkpasswd ${pass}` ${user}"
    echo ${cmd}
done
