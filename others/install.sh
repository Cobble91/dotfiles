#!/bin/bash

echo "Pasting Other Stuff"
bash ./paste_others.sh

echo "Misc"
export PATH=$PATH:/usr/local/bin

echo "Tmux Stuff"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf

echo "Rust Stuff"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh # https://rust-lang.org/tools/install/
. "$HOME/.cargo/env"
rustup default stable
rustup component add rust-analyzer

echo "Latex Stuff"
sudo apt install texlive-core
cargo install --locked tree-sitter-cli

echo "Done"
