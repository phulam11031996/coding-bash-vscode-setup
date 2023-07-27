#!/bin/bash

echo "Continuing setting up terminal ..."
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
sed -i '' 's/ZSH_THEME=".*"/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc
source ~/.zshrc

# Download iTerm2 Colors to My Custom Theme in Downloads folder
curl https://raw.githubusercontent.com/josean-dev/dev-environment-files/main/coolnight.itermcolors --output ~/Downloads/coolnight.itermcolors

# Install ZSH Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sed -i '' 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)/' ~/.zshrc

echo "Setting up Visual Code Studio ..."

# Install VSCodeVim extension
code --install-extension vscodevim.vim

# Install Material Icon Theme extension
code --install-extension pkief.material-icon-theme

# Install One Dark Pro theme extension
code --install-extension zhuangtongfa.material-theme

# Install Docker extension
code --install-extension ms-azuretools.vscode-docker

# Install Kubernetes extension
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools

# Install Python Extension Pack
code --install-extension donjayamanne.python-extension-pack

# Install Java Extension Pack
code --install-extension vscjava.vscode-java-pack

# Replace keybindings.json and settings.json
rm -f /Users/phu/Library/Application\ Support/Code/User/keybindings.json
rm -f /Users/phu/Library/Application\ Support/Code/User/settings.json
cp keybindings.json /Users/phu/Library/Application\ Support/Code/User/
cp settings.json /Users/phu/Library/Application\ Support/Code/User/

# Disable press and hold for keypresses in Visual Studio Code
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false
defaults write com.visualstudio.code.oss ApplePressAndHoldEnabled -bool false
defaults write com.microsoft.VSCodeExploration ApplePressAndHoldEnabled -bool false
defaults delete -g ApplePressAndHoldEnabled

echo "Now run install-softwares-03.sh"
