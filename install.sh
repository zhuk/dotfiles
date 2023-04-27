#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -s ${BASEDIR}/lazyvim.starter ~/.config/nvim

# zsh
ln -s ${BASEDIR}/zshrc ~/.zshrc

# tmux
ln -s ${BASEDIR}/tmux.conf ~/.tmux.conf

# git
ln -s ${BASEDIR}/gitconfig ~/.gitconfig

# pip
ln -s -t ~/.config ${BASEDIR}/pip
