#!/bin/bash

echo '~> Installing ncurses-dev';
sudo apt-get install ncurses-dev;
mkdir -p ~/src;
cd ~/src;
echo '~> Fetching vim-7.3';
wget ftp://ftp.vim.org/pub/vim/unix/vim-7.3.tar.bz2;
tar xjvf vim-7.3.tar.bz2;
cd vim73;
echo '~> Installing Vim';
./configure --prefix=/usr --with-features=huge --disable-gui --without-x --enable-rubyinterp --enable-cscope --enable-multibyte;
sudo make;
sudo make install;
echo '~> Cloning Vim config';
git clone git://github.com/falsetto/vim-config.git ~/.vim;
ln -s ~/.vim/dotfiles/vimrc ~/.vimrc;
echo '~> All set!';
