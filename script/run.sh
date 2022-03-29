set -e

echo "== Symlink files =="
mkdir ~/.hammerspoon
./script/createSymlinks.sh
echo ""

echo "== Install Homebrew =="
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo ""

echo "== Install from Brewfile =="
brew bundle --file ~/.dotfiles/Brewfile
echo ""

echo "== Install global NPM packages =="
./script/npm.sh
echo ""

echo "== Misc =="
gh alias set home "repo view --web"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo ""
