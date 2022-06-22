export ZSH="/Users/simonlagos/.oh-my-zsh"

# Don't use a theme
ZSH_THEME=""

# Use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files under VCS as dirty. 
# This makes repository status check for large repositories much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  autojump
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# -------------------------------- #
# Aliases
# -------------------------------- #

alias ll='ls -laG'
# Open code
alias oc='code .'
# Open (code) and start
alias oas="oc && nr start"
# Open merge conflicts - Open all files with merge conflicts
alias omc='git diff --name-only | uniq | xargs code'
alias nr="npm run"
alias tsw="npx tsc --watch"
# Better docker ps
alias dps='docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Status}}"'
# Cleanup exited containers
alias drm='docker rm $(docker ps -a -f status=exited -q)'
alias gc="git commit"
alias wip="git commit -n -m \"WIP\""
alias gst="git status"
alias gp="git push"
alias gpr="git pull --rebase"
alias gsh="git stash -u -k"
alias gshp="git stash pop"
alias gco="git checkout"
alias sb="switch-branch"
# git create branch
alias gcb="git-ensure -s -b stable,main,master && git checkout -b"
alias gsync="gsh && gpr && gshp"
# Rebase a feature branch on the main brannch
# TODO: Make this work with any main branch
alias grm="git rebase origin/stable"
# GIT_EDITOR=true Does not open editor to edit commit message
alias grc="GIT_EDITOR=true git rebase --continue"
alias gpf="git push --force-with-lease"
alias undo-commit="git reset --soft HEAD^"
alias gss="git stash show -p"
alias qwe-prune="git fetch && git remote update origin --prune && git branch -vv | grep ': gone]' | cut -f 3 -d ' ' | xargs git branch -D"
# npm clean install
alias nci="rm -rf node_modules && rm package-lock.json && npm i"
# Change "theFuck"s "fuck" command to "magic"
eval $(thefuck --alias)
alias magic="fuck"
# View outdated dependencies
alias tm="taze major"
# Update all outdated dependencies
alias tmw="taze major -w"
alias nco="npx cypress open"
alias ncoc="npx cypress open-ct"

# -------------------------------- #
# Functions
# -------------------------------- #

# Set the terminal title
precmd() { echo -n -e "\033]0;$(basename "$PWD")\007" }

# Rename a branch (also at origin)
function rename_branch() {
  if [[ -z "$1" || -z "$2" ]]; then
    echo "Usage: $0 old_branch new_branch"
    return 1
  fi

  # Rename branch locally
  git branch -m "$1" "$2"
  # Rename branch in origin remote
  if git push origin :"$1"; then
    git push --set-upstream origin "$2"
  fi
}

# -------------------------------- #
# Path
# -------------------------------- #

export PATH="/usr/local/opt/node@18/bin:$PATH"

export PATH="$HOME/Library/Application\ Support/Steam/steamapps/common/Aseprite/Aseprite.app/Contents/MacOS:$PATH"
# alias aseprite="$HOME/Library/Application\ Support/Steam/steamapps/common/Aseprite/Aseprite.app/Contents/MacOS/aseprite"

# In npm run scripts you can execute locally installed binaries by name. This enables the same outside npm.
export PATH="$(npm-run-path)"

export PATH="/usr/local/opt/libpq/bin:$PATH"

# -------------------------------- #
# Misc
# -------------------------------- #

# Activate pure prompt
autoload -U promptinit; promptinit
prompt pure
