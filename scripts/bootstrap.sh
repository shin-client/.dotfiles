#!/bin/bash

# Cài đặt các dependencies
sudo apt update && sudo apt install -y \
  git \
  stow \
  neovim \
  ripgrep \
  python3-pip \
  nodejs npm

# Cài đặt các plugin cho Neovim
nvim +PackerSync +qall

# Đường dẫn đến thư mục dotfiles
DOTFILES_DIR=~/.dotfiles

# Danh sách các thư mục cần stow
STOW_DIRS=("bash" "zsh" "git" "nvim")

# Sử dụng Stow để tạo symlink
for dir in "${STOW_DIRS[@]}"; do
  echo "Đang thiết lập symlink cho $dir..."
  stow -d $DOTFILES_DIR -t ~ $dir
done

echo "Dotfiles đã được thiết lập thành công!"

