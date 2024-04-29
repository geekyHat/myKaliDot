#!/bin/bash
#
#

if ! command -v tmux &> /dev/null
then
    echo "install tmux"
    exit 1
fi

if ! command -v kitty &> /dev/null
then
    echo "install kitty terminal"
    exit 1
fi

echo "installing tmp plugin manager for tmux"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "coping tmux conf"
mkdir -p ~/.config/tmux/ && cp tmux.conf ~/.config/

echo "coping kitty conf"
mkdir -p ~/.config/kitty/ && cp kitty.conf ~/.config/

echo "coping nvim conf files"
cp -r nvim ~/.config/



