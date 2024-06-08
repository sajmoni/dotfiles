# dotfiles

The purpose of this repo is to:

1. Share configs between computers
2. Easily setup new computers with tools and apps

It does two things when run:

1. Symlinks configs for `git`, `zsh`, `hyper`, `hammerspoon`, `tig` and `vim`.
2. Installs apps from `homebrew` and `npm`.

## How to use

1. **Clone the repo**

```zsh
git clone git@github.com:sajmoni/dotfiles.git ~/dotfiles
```

2. **Run**

```zsh
./script/run.sh
```

3. **Local configs**

There are "local" untracked configs. Put stuff here that you don't want to share.

- `~/.local.gitconfig`
- `~/.local.zshrc`

## Generate new Brewfile

```zsh
./script/createBrewfile.sh
```
