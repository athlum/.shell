#!/bin/sh

brew install neovim

pip install pynvim

mkdir -p ~/.config/nvim

rm -f ~/.config/nvim/init.vim

ln -sf ~/.shell/nvim_init.vim ~/.config/nvim/init.vim
