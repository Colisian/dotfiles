#!/bin/bash

cd ~/dotfiles

# Copy current configs
cp ~/.config/kitty/kitty.conf ~/dotfiles/kitty.conf
cp ~/.zshrc ~/dotfiles/.zshrc
cp ~/.p10k.zsh ~/dotfiles/.p10k.zsh

# Commit and push
git add .
git commit -m "Update configs: $(date +%Y-%m-%d)"
git push

echo "✅ Configs pushed to GitHub!"
