#!/bin/bash

# Check if we are root privilage or not
if [[ $(whoami) ==  root ]]
then
  echo "You are root user"
else
  sudo su -
fi
# Which files are we going to back up. Please make sure to exist /home/ec2-user/data file
if [[ -e /home/ec2-user/data.log ]]
then
  echo "/home/ec2-user/data file exist"
else
  touch /home/ec2-user/data
fi

# Where do we backup to. Please crete this file before execute this script
mkdir /mnt/backup

# Create archive filename based on time
DATE=`date`
tar $HOSTNAME $DATE.tgz /home/ec2-user/data
tar $HOSTNAME $DATE.tgz /etc
tar $HOSTNAME $DATE.tgz /boot
tar $HOSTNAME $DATE.tgz /usr

# Print start status message.
echo "backup process is started"

# Backup the files using tar.


# Print end status message.
echo "backup process is ended"

# Long listing of files in $dest to check file sizes.

crontab -e
*/5 * * * * date >> /home/ec2-user/date.log