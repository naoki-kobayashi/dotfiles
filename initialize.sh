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
ln -s ~/.vim/bundle/vim-hybrid/colors/hybrid.vim ~/.vim/colors/hybrid.vim
ln -s ~/.vim/bundle/vim-hybrid/colors/hybrid-light.vim ~/.vim/colors/hybrid-light.vim

if [ -e ~/.vim/after ]; then
    echo "vim after directory is already maked"
else
    mkdir -p ~/.vim/after
fi

if [ -e ~/.vim/after/ftdetect ]; then
    echo "vim/after/ftdetect directory is already maked"
else
    mkdir -p ~/.vim/after/ftdetect
fi

if [ -e ~/.vim/after/indent ]; then
    echo "vim/after/indent directory is already maked"
else
    mkdir -p ~/.vim/after/indent
fi

if [ -e ~/.vim/after/syntax ]; then
    echo "vim/after/syntax directory is already maked"
else
    mkdir -p ~/.vim/after/syntax
fi

if [ -e ~/.vim/after/ftplugin ]; then
    echo "vim/after/ftplugin directory is already maked"
else
    mkdir -p ~/.vim/after/ftplugin
fi

ln -s ~/.vim/bundle/vim-jsx/after/jsx-config.vim ~/.vim/after/jsx-config.vim
ln -s ~/.vim/bundle/vim-jsx/after/ftplugin/jsx.vim ~/.vim/after/ftplugin/jsx.vim
ln -s ~/.vim/bundle/vim-jsx/after/indent/jsx.vim ~/.vim/after/indent/jsx.vim
ln -s ~/.vim/bundle/vim-jsx/after/syntax/jsx.vim ~/.vim/after/syntax/jsx.vim
ln -s ~/.vim/bundle/Dockerfile.vim/ftdetect/Dockerfile.vim ~/.vim/after/ftdetect/Dockerfile.vim
ln -s ~/.vim/bundle/Dockerfile.vim/syntax/Dockerfile.vim ~/.vim/after/syntax/Dockerfile.vim
