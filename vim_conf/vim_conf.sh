#!/bin/bash
#
# backup old vimrc 
# in order to beautify the interface of vim, need to install powerline
# ../powerline_install.sh
mv ~/.vimrc ~/.vimrc.bak
cp ./.vimrc ~/vimrc
cp -r ./.vim ~/vim