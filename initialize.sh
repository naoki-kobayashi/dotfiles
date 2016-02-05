#! /bin/bash
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

# install neobundle
if [ -e ~/.vim/bundle ]; then
    echo "neobudle is already installed"
else
    mkdir -p ~/.vim/bundle
    git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
fi

# install vim plugin
~/.vim/bundle/neobundle.vim/bin/neoinstall

# set vim colors directory
if [ -e ~/.vim/colors ]; then
    echo "colors directory is already maked"
else
    mkdir -p ~/.vim/colors
fi
ln -s ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/solarized.vim
ln -s ~/.vim/bundle/vim-hybrid/colors/hybrid.vim ~/.vim/colors/hybrid.vim
ln -s ~/.vim/bundle/vim-hybrid/colors/hybrid-light.vim ~/.vim/colors/hybrid-light.vim

# use mxw/vim-jsx vim plugin
if [ -e ~/.vim/after ]; then
    echo "vim after directory is already maked"
else
    cp -r ~/.vim/bundle/vim-jsx/after ~/.vim/after
fi

# extend filetype difine
if [ -e ~/.vim/ftdetect ]; then
    echo "~/.vim/ftdetect is already maked"
else
    cp -r ~/dotfiles/vim/ftdetect ~/.vim/ftdetect
fi


