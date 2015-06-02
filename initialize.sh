#! /bin/bash
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

#! install neobundle
if [ -e ~/.vim/bundle ]; then
    echo "neobudle is already installed"
else
    mkdir -p ~/.vim/bundle
    git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
fi

#! install vim plugin
~/.vim/bundle/neobundle.vim/bin/neoinstall
