#!/bin/bash

echo Copying other config files to .config/others
echo ~/.bashrc
cp -f ~/.bashrc ./
echo ~/.tmux.conf
cp -f ~/.tmux.conf ./
echo ~/.tmux/
cp -rf ~/.tmux ./
