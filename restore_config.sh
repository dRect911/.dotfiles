#!/bin/bash

# Install packages
while read -r package; do
    sudo pacman -S --noconfirm "$package"
done < pkglist.txt

# Create symlinks for dotfiles
dotfiles_dir="$HOME/.dotfiles"

# Ensure the dotfiles directory exists
if [ -d "$dotfiles_dir" ]; then
    # Symlink configurations
    ln -s "$dotfiles_dir/i3" "$HOME/.config/i3"
    ln -s "$dotfiles_dir/.zshrc" "$HOME/.zshrc"
    ln -s "$dotfiles_dir/.gitconfig" "$HOME/.gitconfig"
    ln -s "$dotfiles_dir/polybar" "$HOME/.config/polybar"
    ln -s "$dotfiles_dir/gh" "$HOME/.config/gh"
    ln -s "$dotfiles_dir/alacritty" "$HOME/.config/alacritty"
    # ln -s "$dotfiles_dir/some_other_config" "$HOME/.config/some_other_config"
    # Add more symlinks as needed
else
    echo "Dotfiles directory not found. Please check the path: $dotfiles_dir"
    exit 1
fi
