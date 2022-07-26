createSymlink() {
  ln -sfn ~/.dotfiles/config/$1 ~/$1
}

createSymlink ".zshrc"
createSymlink ".hammerspoon/init.lua"
createSymlink ".hyper.js"
createSymlink ".tigrc"
createSymlink ".vimrc"
createSymlink ".gitconfig"
