# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
export ZSH="/Users/simonlagos/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

### ALIASES ###

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Misc
alias ll='ls -laG'

# Open code
alias oc='code .'

alias nr="npm run"
alias tsw="npx tsc --watch"

# Git
alias gst="git status"
alias gp="git push"
alias gpr="git pull --rebase"
alias gsh="git stash"
alias gshp="git stash pop"
alias gco="git checkout"
alias gsync="gsh && gpr && gshp"
# GIT_EDITOR=true Does not open editor to edit commit message
alias grc="GIT_EDITOR=true git rebase --continue"
alias gpf="git push --force-with-lease"
alias undo-commit="git reset --soft HEAD^"
alias stash_show="git stash show -p"
alias qwe-prune="git fetch && git remote update origin --prune && git branch -vv | grep ': gone]' | cut -f 3 -d ' ' | xargs git branch -D"

# Yarn
alias yui="yarn upgrade-interactive"
alias ytw="yarn test --watch"
alias yrefresh="rm -rf node_modules && rm yarn.lock && yarn"

# The Fuck
# Change "theFuck"s "fuck" command to "magic"
eval $(thefuck --alias)
alias magic="fuck"

# Set the terminal title
precmd() { echo -n -e "\033]0;$(basename "$PWD")\007" }

export PATH="/usr/local/opt/node@16/bin:$PATH"

export PATH="$HOME/Library/Application\ Support/Steam/steamapps/common/Aseprite/Aseprite.app/Contents/MacOS:$PATH"
# alias aseprite="$HOME/Library/Application\ Support/Steam/steamapps/common/Aseprite/Aseprite.app/Contents/MacOS/aseprite"

# Activate pure prompt
autoload -U promptinit; promptinit
prompt pure

# In npm run scripts you can execute locally installed binaries by name. This enables the same outside npm.
export PATH="$(npm-run-path)"

# Has to be the last thing here
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh