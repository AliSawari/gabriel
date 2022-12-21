#!/bin/bash

zshrc="$HOME/.zshrc"
bashrc="$HOME/.bashrc"

gabriel="# gabriel\nsource $(pwd)/gabriel.sh"

done_message="Done! Please restart your terminal to use gabriel"

if [ -f $zshrc ]; then
    echo "setting up gabriel for zsh";
    echo -e $gabriel >> $zshrc
    echo $done_message

elif [ -f $bashrc ]; then
    echo "setting up gabriel for bash";
    echo -e $gabriel >> $bashrc
    echo $done_message

else
    echo "Couldn't find a Shell!"
fi
