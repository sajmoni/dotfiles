# dotfiles

The purpose of this repo is to:

1. Share configs between computers
2. Easily setup new computers with tools and apps

It does two things when run:

1. Symlinks configs for `zsh`, `hyper`, `hammerspoon`, `tig` and `vim`.
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

3: **Local gitconfig**

Add user info to `~/.local.gitconfig`

```
[user]
	email = <enter email>
	name = <enter name>
```

### Generate new Brewfile

```zsh
./script/createBrewfile.sh
```
