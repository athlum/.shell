# /bin/sh

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

ln -sf ~/.shell/.tmux.conf ~/.tmux.conf
ln -sf ~/.shell/.tmux.conf.local ~/.tmux.conf.local
ln -sf ~/.shell/.vimrc ~/.vimrc
