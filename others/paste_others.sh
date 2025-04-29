#!/bin/bash

echo Copying files from .config/others to appropriate locations
echo ~/.bashrc
cp -f ./.bashrc ~/.bashrc
echo ~/.tmux.conf
cp -f ./.tmux.conf ~/.tmux.conf
echo ~/.tmux/
cp -rf ./.tmux/. ~/.tmux
echo Done
