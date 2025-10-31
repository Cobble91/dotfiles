#!/bin/bash

echo "Copying files from .config/others to appropriate locations"
echo "~/.bashrc"
touch ~/.bashrc
cp -f ./.bashrc ~/.bashrc
echo "~/.tmux.conf"
touch ~/.tmux.conf
cp -f ./.tmux.conf ~/.tmux.conf
echo "~/.tmux/"
mkdir ~/.tmux
cp -rf ./.tmux ~/.tmux
echo "Done"
