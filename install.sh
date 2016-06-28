#! /bin/bash

NOCOLOR="\033[0m"
CRED="\033[31m"
CGREEN="\033[32m"
CBLUE="\033[34m"

colored_string () {
    #$1 Color
    #$2 String
    echo -e $1 $2 $NOCOlOR
}

colored_string $CGREEN "Installing source to /usr/local/bin/"
cp -v $PWD/src/* /usr/local/bin
colored_string $CGREEN "Executing $SHELL"
exec $SHELL
