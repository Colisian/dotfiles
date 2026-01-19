# My Dotfiles

Personal configuration files for macOS terminal setup.

## Contents

- `kitty.conf` - Kitty terminal configuration
- `.zshrc` - Zsh shell configuration with Powerlevel10k
- `.p10k.zsh` - Powerlevel10k theme configuration
- `install.sh` - Automated setup script for new machines

## Quick Install
```bash
git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles
cd ~/dotfiles
chmod +x install.sh
./install.sh
```

## Manual Install
```bash
# Kitty
mkdir -p ~/.config/kitty
ln -sf ~/dotfiles/kitty.conf ~/.config/kitty/kitty.conf

# Zsh
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.p10k.zsh ~/.p10k.zsh
source ~/.zshrc
```

## Make Alias
```bash
echo 'alias dotfiles-update="cd ~/dotfiles && cp ~/.config/kitty/kitty.conf . && cp ~/.zshrc . && cp ~/.p10k.zsh . && git add . && git commit -m \"Update: \$(date)\" && git push"' >> ~/.zshrc
```
Run dotfiles-updates from command anytime updates are needed

## Dependencies

- Homebrew
- Kitty terminal
- Powerlevel10k
- MesloLGS Nerd Font
- zsh-autosuggestions
- zsh-syntax-highlighting
