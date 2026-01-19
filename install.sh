#!/bin/bash

set -e

echo "🚀 Installing dotfiles..."

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "📦 Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install dependencies
echo -e "${BLUE}📦 Installing dependencies...${NC}"
brew install --cask kitty
brew install powerlevel10k zsh-autosuggestions zsh-syntax-highlighting

# Install Nerd Font
echo -e "${BLUE}🔤 Installing MesloLGS Nerd Font...${NC}"
brew tap homebrew/cask-fonts
brew install font-meslo-lg-nerd-font

# Backup existing configs
echo -e "${BLUE}💾 Backing up existing configs...${NC}"
mkdir -p ~/.config_backup
[ -f ~/.zshrc ] && cp ~/.zshrc ~/.config_backup/.zshrc.backup
[ -f ~/.p10k.zsh ] && cp ~/.p10k.zsh ~/.config_backup/.p10k.zsh.backup
[ -f ~/.config/kitty/kitty.conf ] && cp ~/.config/kitty/kitty.conf ~/.config_backup/kitty.conf.backup

# Create symlinks
echo -e "${BLUE}🔗 Creating symlinks...${NC}"
mkdir -p ~/.config/kitty
ln -sf ~/dotfiles/kitty.conf ~/.config/kitty/kitty.conf
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.p10k.zsh ~/.p10k.zsh

echo -e "${GREEN}✅ Dotfiles installed successfully!${NC}"
echo ""
echo "Next steps:"
echo "1. Restart Kitty terminal"
echo "2. Run: source ~/.zshrc"
echo ""
echo "Your old configs are backed up in ~/.config_backup"
