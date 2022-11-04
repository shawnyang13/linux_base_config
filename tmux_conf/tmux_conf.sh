#!/bin/bash
#
# backup old tmux config
mv ~/.tmux.conf ~/.tmux.conf.bak
cp ./.tmux.conf ~/tmux.conf
cp -r ./.tmux ~/tmux