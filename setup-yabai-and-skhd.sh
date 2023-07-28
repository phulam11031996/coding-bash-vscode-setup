echo "You need to do these settings yourself"
echo "\tOpen Several Desktops (~7) on Your Machine"
echo "\tGo To Keyboard Settings > Shortcuts > Mission Control"
echo "\tExpand Mission Control and Turn On Shortcuts for Switching Spaces 1-7 with "Ctrl + # Of Space""
echo "\tGo to System Settings > Accessibility > Display"
echo "\tTurn On Reduce Motion"
echo "\tGo To System Settings > Desktop & Dock > Mission Control"
echo "\tTurn off "Automatically Rearrange Spaces Based On Most Recent Use""
echo "\tPersonally, I only keep "Displays Have Separate Spaces" turned on here, and that's what I'd recommend"

# Install Yabai and Skhd
brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd

# Create Yabai Config File in Home Directory
mkdir ~/.config/yabai
mkdir ~/.config/skhd
rm -f ~/.config/yabai/yabairc
rm -f ~/.config/skhd/yabairc
cp yabairc ~/.config/yabai/
cp skhdrc ~/.config/skhd/

echo "You to start yabai and skhd yourself"
echo "\tStart it like so:"
echo "\tyabai --start-service"
echo "\tskhd --start-service"
echo "\tAllow any prompts for accessibility permissions."

echo "\tRestart yabai and skhd:"
echo "\tyabai --restart-service"
echo "\tskhd --restart-service"

echo "After finish that, you are done with install yabai"
