# dotfiles

Not sure what this will be yet.

## How to use

1. **Clone the repo**

```zsh
git clone git@github.com:sajmoni/dotfiles.git ~/.dotfiles
```

2. **Run**

```zsh
./run.sh
```

### Generate new Brewfile

```zsh
cd ~/.dotfiles
rm Brewfile
brew bundle dump --describe
```
