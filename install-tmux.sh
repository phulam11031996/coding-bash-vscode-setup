#!/bin/bash

echo "Installing tmux ..."

brew install tmux

cp ./.tmux.conf ~/.config/

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

