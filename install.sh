#!/bin/bash

sh install/common.sh
sh install/brew.sh
sh install/server.sh
sh install/navigation.sh
sh install/dev_apps.sh
sh install/apps.sh

cp ~/dotfiles/copy/.bash_aliases ~/.bash_aliases
cp ~/dotfiles/copy/.gitconfig ~/.gitconfig
cp ~/dotfiles/copy/.zshrc ~/.zshrc

mkdir -p ~/.config
ln -s ~/dotfiles/configs/fish ~/.config
ln -s ~/dotfiles/configs/nvim ~/.config

nvim +PluginInstall +qall
