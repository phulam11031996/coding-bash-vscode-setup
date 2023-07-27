#!/bin/bash

# Check if Homebrew is already installed; if not, install it
if ! command -v brew &>/dev/null; then
	echo "Homebrew not found. Installing Homebrew..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	(echo; echo 'eval "$(/usr/local/bin/brew shellenv)"') >> /Users/phu/.zprofile
	eval "$(/usr/local/bin/brew shellenv)"
else
	echo "Homebrew is already installed."
fi

# Check if wget is already installed; if not, install it using Homebrew
if ! command -v wget &>/dev/null; then
	echo "wget not found. Installing wget..."
	brew install wget
else
	echo "wget is already installed."
fi

# List of software packages to install using Homebrew
packages=(
	brew install git
	brew install google-chrome
	brew install firefox
	brew install discord
	brew install cheatsheet
	brew install alfred
	brew install visual-studio-code
	brew install iterm2
	brew install docker
	# Add more software packages here as needed
)

echo "Installing softwares ..."

# Loop through the list and install each software package using Homebrew
for package in "${packages[@]}"; do
    if ! brew list --formula | grep -q "^$package\$"; then
        echo "Installing $package..."
        brew install "$package"
    else
        echo "$package is already installed."
    fi
done

echo "Setting terminal ..."

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Now run install-softwares-02.sh"
