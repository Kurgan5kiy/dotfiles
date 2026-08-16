#!/usr/bin/env zsh
# ┌─┐┬  ┬┌─┐┌─┐┌─┐┌─┐
# ├─┤│  │├─┤└─┐├┤ └─┐
# ┴ ┴┴─┘┴┴ ┴└─┘└─┘└─┘
#--------------------------------------------
# (c) maarutan   https://github.com/maarutan

#-- variables --

EXPLORE="yazi"
ROOTEXPLORE="yazi"

EDITOR="nvim"
ROOTEDITOR="nvim"

# -- change directory --

alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"

# -- system --

alias cls="clear && exec $(basename $SHELL)"
alias cls!="clear"

alias ex="exit"

alias pg="ping google.com"

alias tch="touch"
alias mkd="mkdir"

alias rm!="rm -rf"
alias rm="rm -r"

alias ll="eza -l -g --icons"
alias la='exa -a --icons --color'
alias lla='exa -la --icons --color'
alias lt='exa --tree --icons --color'
alias ls='exa --icons --color=auto'

alias e=$"EXPLORE"
alias re="sudo -E \${ROOTEXPLORE}"
alias n=$"EDITOR"
alias rn="sudo -E \${ROOTEDITOR}"
alias cpp="copypath"

# -- utils  --

alias nzsh="nvim ~/.zshrc"
alias matrix="unimatrix -b -s 95  -c blue"
alias ftch="brrtfetch ~/Pictures/gifs/defaults/brrt.gif"

alias fuck="git reset --soft HEAD~1; git add -A; git commit -m 'Fix deployment pipeline'; git add -A; git commit -m 'Fix deployment pipeline'; git push --force-with-lease"

toggle_prompt_mode() {
  if [[ "$POWERLEVEL9K_VCS_DISABLED_WORKDIR_PATTERN" == "*" ]]; then
    typeset -g POWERLEVEL9K_VCS_DISABLED_WORKDIR_PATTERN='~'
    echo "Prompt mode: Standard Git Focus 🐙"
  else
    typeset -g POWERLEVEL9K_VCS_DISABLED_WORKDIR_PATTERN='*'
    echo "Prompt mode: Clean Jujutsu Focus 🏹"
  fi
  p10k reload
}
alias jjtog="toggle_prompt_mode"
