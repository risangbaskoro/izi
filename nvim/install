#!/bin/bash

OS=$(uname)
OS=${OS,,}
ARCH=$(uname -m)

if [[ $(uname) == "Darwin" ]]; then
    OS="macos"
fi

NVIM_DIR_NAME="nvim-$OS-$ARCH"
NVIM_TARBALL="$NVIM_DIR_NAME.tar.gz"

NVIM_URL="https://github.com/neovim/neovim/releases/latest/download/$NVIM_TARBALL"

if command -v nvim >/dev/null 2>&1; then
	echo "Neovim already installed."
else
	echo "Installing Neovim..."

	echo "Changing directory to ${HOME}..."
	cd ${HOME}

	# Download
	echo "Downloading..."
	curl -fsSLO "$NVIM_URL"

	# Extract
	echo "Extracting to $NVIM_DIR_NAME..."
	tar -xzf "$NVIM_TARBALL"

	# Copy to /usr
	echo "Copying libraries..."
	cp -ar "$NVIM_DIR_NAME/." "/usr"

fi

if [ -f "$NVIM_TARBALL" ]; then
	echo "Removing $NVIM_TARBALL..."
	rm -r $NVIM_TARBALL
fi

if [ -d "$NVIM_DIR_NAME" ]; then
	echo "Removing $NVIM_DIR_NAME..."
	rm -r $NVIM_DIR_NAME
fi

echo "DONE!"
