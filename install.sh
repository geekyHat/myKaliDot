#!/bin/bash
#
#

echo "installing tmp plugin manager for tmux"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "coping tmux conf"
mkdir -p ~/.config/tmux/ && cp tmux.conf ~/.config/tmux/

echo "coping kitty conf"
mkdir -p ~/.config/kitty/ && cp kitty.conf ~/.config/

echo "coping nvim conf files"
cp -r nvim ~/.config/



