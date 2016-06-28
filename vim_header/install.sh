#! /bin/sh

FOLDER=$HOME/.vim/templates
VIMRC=$HOME/.vimrc

#mkdir -p $FOLDER

echo $FOLDER
mkdir -p $FOLDER
cp *header* $FOLDER
cat config.txt >> $VIMRC 
