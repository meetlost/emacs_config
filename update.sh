#!/bin/sh

rm -rf ~/.emacs.d ~/.emacs
cp -a .emacs.d ~/
cd ~/
ln -s .emacs.d/.emacs .emacs
