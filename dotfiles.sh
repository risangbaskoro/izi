#!/bin/bash

DOTFILES_DIR="${HOME}/dotfiles"
DOTFILES_URL="https://github.com/risangbaskoro/dotfiles.git"

[[ ! -f "${HOME}/.bashrc" ]] || rm "${HOME}/.bashrc"
[[ ! -f "${HOME}/.zshrc" ]] || rm "${HOME}/.zshrc"

[[ -d "$DOTFILES_DIR" ]] || git clone "$DOTFILES_URL" "$DOTFILES_DIR"
[[ ! -d "$DOTFILES_DIR" ]] || bash "$DOTFILES_DIR/install.sh"
