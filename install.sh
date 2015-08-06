#!/bin/bash 
echo "------------------------"
echo "Removing old .vim files"
echo "------------------------"
rm -rf ~/.vim*

echo "------------------------"
echo "Copying .vim/ to home..."
echo "------------------------"
cp -r .vim ~

echo "------------------------"
echo "Copying .vimrc to home..."
echo "------------------------"
cp .vimrc ~

echo "------------------------"
echo "Installing pathogen..."
echo "------------------------"
mkdir -p ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "------------------------"
echo "Installing plugins..."
echo "------------------------"
echo "**********************************************"
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
echo "**********************************************"
git clone https://github.com/airblade/vim-gitgutter.git
echo "**********************************************"
git clone https://github.com/scrooloose/syntastic.git
echo "**********************************************"
