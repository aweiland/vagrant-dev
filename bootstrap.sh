#! /bin/bash

echo "Installing Ansible..."
yum upgrade -y
yum install -y epel-release
yum install -y ansible
#yum install gcc
#yum install kernel-devel
#yum install bzip2
#yum install kernel-devel-2.6.32-573.el6.i686
#mkdir /media/cdrom
#mount /dev/scd0 /media/cdrom
#sh /media/cdrom/VBoxLinuxAdditions.run