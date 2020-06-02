# /bin/sh

#link conf
./linkconf.sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/athlum/oh-my-zsh/master/tools/install.sh)"


SHELLPATH=~/.shell
if [ -d "$SHELLPATH" ]; then
    printf "${YELLOW}We have .shell repo already."
    exit
fi

env git clone --depth=1 https://github.com/athlum/.shell.git $SHELLPATH || {
    printf "Error: git clone of .shell repo failed\n"
    exit 1
}

cd $SHELLPATH

#install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#install tmux
brew install tmux
./powerline.sh

#install vim8
brew install vim --with-cscope --with-python --with-lua --with-override-system-vi
brew install ctags-exuberant

#install vim theme
cd /tmp
git clone https://github.com/altercation/vim-colors-solarized.git
mv vim-colors-solarized/colors ~/.vim/
rm -rf vim-colors-solarized

#install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
~/.vim/bundle/nerd-fonts/install.sh

# ./chunkwm.sh

./nvim.sh
