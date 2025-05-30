#!/usr/bin/env zsh

# ------------------------------------------------------------------------------
# Utils
# ------------------------------------------------------------------------------
alias sudo="sudo " # Enable aliases to be sudo’ed


# ------------------------------------------------------------------------------
# Navigation
# ------------------------------------------------------------------------------
alias ".."="cd .."
alias ...="cd ../.."
alias ~="cd ~"
alias md="mkdir -p "
alias rd="rm -rf "

alias dotfiles="cd $DOTFILES_PATH"
alias sites="cd $HOME/Sites"


# ------------------------------------------------------------------------------
# Git
# ------------------------------------------------------------------------------
alias ga="git add"
alias gc="git cz"
alias gca="git add --all && git commit --amend --no-edit"
alias gco="git checkout"
alias gd="git diff"
alias gs="git st -sb"
alias gf="git fetch --all -p"
alias gps="git push"
alias gpsf="git push --force"
alias gpl="git pull --rebase --autostash"
alias gr="git reset"
alias gra="git rebase --abort"
git_rebase_interactive() {
  git rebase -i "$1~1"
}
alias gri="git_rebase_interactive"
alias grc="git rebase --continue"
alias grh="gr HEAD"
alias gb="git branch"
alias gl="git log --oneline"


# ------------------------------------------------------------------------------
# Editors
# ------------------------------------------------------------------------------
alias o="open $PWD"
alias v="nvim"
alias vim="nvim"


# ------------------------------------------------------------------------------
# Processes Monitor
# ------------------------------------------------------------------------------
# alias top="btm --color gruvbox "
alias top="btop"
