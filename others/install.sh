#!/bin/bash

echo "Tmux Stuff"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
touch ~/.tmux.conf
bash ./paste_others.sh
tmux source ~/.tmux.conf

echo "Rust Stuff"
sudo apt install rustup
rustup default stable
rustup component add ruse-analyzer

echo "Done"
