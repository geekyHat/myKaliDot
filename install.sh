#!/bin/bash
#
#
sudo apt install imagemagick -y && sudo apt install libmagickwand-dev -y && sudo apt install liblua5.1-0-dev -y && sudo apt install luajit -y
echo "installed packages"

echo "installing tmp plugin manager for tmux"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# install plugins from tmux "CTRL space I"
echo "coping tmux conf"
mkdir -p ~/.config/tmux/ && cp tmux.conf ~/.config/tmux/

# download hack fonts from https://sourcefoundry.org/hack/
echo "coping kitty conf"
mkdir -p ~/.config/kitty/ && cp kitty.conf ~/.config/

echo "coping nvim conf files"
cp -r nvim ~/.config/



