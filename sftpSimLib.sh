#!/bin/bash
# put in /usr/local/bin/
# create empty local folder to access server's file
echo "SSHFS to ricardo.harvard.edu for each empty folder in your /Projects directory"
#find /Projects -maxdepth 1 -type d -empty -exec sshfs -p 182 -o idmap=user -o umask=000  $USER@128.103.100.70:/{} {} \;

sshfs -p 182 -o idmap=user -o umask=000  $USER@128.103.100.70:/Projects/standard_libs ~/standard_libs;
