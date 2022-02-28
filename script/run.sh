set -e

echo "== Symlink files =="
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
echo ""
