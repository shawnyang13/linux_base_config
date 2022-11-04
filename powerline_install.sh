#########################################################################
# File Name: powerline_install.sh
# Author: shawn
# mail: jmysyf@hotmial.com
# Created Time: Sun 13 Feb 2022 03:19:33 PM CST
#########################################################################
#!/bin/bash
sudo apt update
sudo apt install powerline

if [ ! -d "~/.fonts" ];then
   mkdir ~/.fonts
fi

cp ./bash_conf/Menlo-for-Powerline/*  ~/.fonts
fc-cache -vf ~/.fonts
