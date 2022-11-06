#########################################################################
# File Name: update.sh
# Author: shawn
# mail: jmysyf@hotmail.com
# Created Time: 2022年02月13日 星期日 04时49分12秒
#########################################################################
#!/bin/bash

# install nessary package
# Powerline is prepared for beautiful bash,vim,tmux interface. And the font of this package is hard to configure, 
# so I write a script to install it. 
sh ./powerline_install.sh 
# config bash
mv ~/.bash_aliases ~/.bash_aliases.bak 
cp ./bash_conf/bash_aliases ~/.bash_aliases
# config vim
mv ~/.tmux.conf ~/.tmux.conf.bak
cp ./tmux_conf/tmux.conf ~/.tmux.conf
cp -r ./tmux_conf/tmux ~/.tmux
# config tmux
mv ~/.vimrc ~/.vimrc.bak
cp ./vim_conf/vimrc ~/.vimrc
cp -r ./vim_conf/vim ~/.vim