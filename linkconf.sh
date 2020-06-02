#!/bin/sh

rm -rf ~/.bashrc
rm -rf ~/.tmux*
rm -rf ~/.vimrc
ln -sf ~/.shell/.bashrc ~/.bashrc
ln -sf ~/.shell/.tmux.conf ~/.tmux.conf
ln -sf ~/.shell/.tmux.conf.local ~/.tmux.conf.local
ln -sf ~/.shell/.vimrc ~/.vimrc
