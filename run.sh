set -e

echo "== Symlink files =="
ln -s ~/.dotfiles/.zshrc ~/.zshrc
mkdir ~/.hammerspoon
ln -s ~/.dotfiles/.hammerspoon/init.lua ~/.hammerspoon/init.lua
ln -s ~/.dotfiles/.hyper.js ~/.hyper.js
ln -s ~/.dotfiles/.tigrc ~/.tigrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc
echo ""

echo "== Install Homebrew =="
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo ""

echo "== Install from Brewfile =="
brew bundle --file ~/.dotfiles/Brewfile
echo ""

echo "== Install global NPM packages =="
./npm.sh
echo ""

echo "== Misc =="
gh alias set home "repo view --web"
echo ""
