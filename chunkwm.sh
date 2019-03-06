#!/bin/bash

ln -sf $(pwd)/.chunkwmrc ~/.chunkwmrc
ln -sf $(pwd)/.skhdrc ~/.skhdrc

# clone tap
brew tap koekeishiya/formulae

# install latest stable version
brew install --with-logging chunkwm
brew install --with-logging koekeishiya/formulae/skhd

brew services restart chunkwm
brew services restart skhd
