#!/bin/sh

rm -rf ~/.tmux*
rm -rf ~/.vimrc
ln -sf ~/.shell/.tmux.conf ~/.tmux.conf
ln -sf ~/.shell/.tmux.conf.local ~/.tmux.conf.local
ln -sf ~/.shell/.vimrc ~/.vimrc
