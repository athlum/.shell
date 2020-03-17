#!/bin/sh

brew install neovim

mkdir -p ~/.config/nvim

rm -f ~/.config/nvim/init.vim

ln -sf ~/.shell/nvim_init.vim ~/.config/nvim/init.vim
