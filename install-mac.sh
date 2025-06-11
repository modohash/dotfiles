## Taps
echo "Tapping Brew..."
brew tap FelixKratz/formulae
brew tap koekeishiya/formulae

## Brew install
echo "Installing Brew Formulae..."
brew install lua
brew install switchaudio-osx
brew install nowplaying-cli
brew install font-hack-nerd-font

brew install borders
brew install yabai
brew install sketchybar
brew install neovim

brew install btop
brew install nnn
brew install spotify_player

brew install --cask kitty

## Install fonts
brew install --cask sf-symbols
brew install --cask font-sf-mono
brew install --cask font-sf-pro
brew install --cask xcodes

curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v2.0.28/sketchybar-app-font.ttf -o $HOME/Library/Fonts/sketchybar-app-font.ttf

# SbarLua
(git clone https://github.com/FelixKratz/SbarLua.git /tmp/SbarLua && cd /tmp/SbarLua/ && make install && rm -rf /tmp/SbarLua/)

## Neovim stuff
curl -fsSL https://deno.land/install.sh | sh

## Create symlinks
rm -f ~/.config/yabai/yabairc
mkdir -p ~/.config/yabai
ln -s /Users/chris/Development/personal/dotfiles/.config/yabai/yabairc ~/.config/yabai/yabairc

rm -f ~/.config/borders/bordersrc
mkdir -p ~/.config/borders
ln -s /Users/chris/Development/personal/dotfiles/.config/borders/bordersrc ~/.config/borders/bordersrc

rm -f ~/.config/sketchybar
ln -s /Users/chris/Development/personal/dotfiles/.config/sketchybar ~/.config/sketchybar

rm -f ~/.config/kitty
ln -s /Users/chris/Development/personal/dotfiles/.config/kitty ~/.config/kitty

## Start Services
echo "Starting Services (grant permissions)..."
brew services start borders
brew services start sketchybar
yabai --start-service

