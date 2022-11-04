#########################################################################
# File Name: powerline4vscode.sh
# Author: shawn
# mail: shawn@vibe.us
# Created Time: Sun 13 Feb 2022 03:19:33 PM CST
#########################################################################
#!/bin/bash
sudo apt install powerline

if [ ! -d "~/.fonts" ];then
   mkdir ~/.fonts
fi

cp ./Menlo-for-Powerline/*  ~/.fonts
fc-cache -vf ~/.fonts
