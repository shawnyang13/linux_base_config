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
./powerline_install.sh 
# config bash
./bash_conf/bash_conf.sh
# config vim
./vim_conf/vim_conf.sh
# config tmux
./tmux_conf/tmux_conf.sh