#!/bin/bash

echo "Pasting Other Stuff"
bash ./paste_others.sh

echo "Tmux Stuff"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf

echo "Rust Stuff"
sudo apt install rustup
rustup default stable
rustup component add ruse-analyzer

echo "Latex Stuff"
sudo apt install texlive-core

echo "Done"
