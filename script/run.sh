set -e

echo "== Create local configs"
touch ~/.local.gitconfig
touch ~/.local.zshrc

echo "== Symlink files =="
mkdir -p ~/.hammerspoon
./script/createSymlinks.sh
echo ""

echo "== Install Homebrew =="
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo ""

echo "== Install from Brewfile =="
brew bundle --file ./Brewfile
echo ""

echo "== Install global NPM packages =="
./script/npm.sh
echo ""

echo "== Misc =="
gh alias set home "repo view --web"
gh alias set prv "pr view --web"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo ""
