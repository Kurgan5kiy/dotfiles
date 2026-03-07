#!/usr/bin/env zsh
# ┬ ┬┌─┐┬  ┌─┐┌─┐┌┬┐┌─┐  ┌┬┐┌─┐  ┌─┐┌─┐┬ ┬
# │││├┤ │  │  │ ││││├┤    │ │ │  ┌─┘└─┐├─┤
# └┴┘└─┘┴─┘└─┘└─┘┴ ┴└─┘   ┴ └─┘  └─┘└─┘┴ ┴
#---------------------------------------------------------------------
# Copyright (c) 2025 maarutan \ Marat Arzymatov. All Rights Reserved.
# https://github.com/maarutan

# -- Welcome to Zsh! --

# zmodload zsh/zprof

export ZSH_CONFIG="$HOME/.config/zsh"  # Config directory
export ZSH_PLUGINS_MANAGER="zinit"     # Plugin manager

source "$ZSH_CONFIG/init.zsh"          # Load main config

# zprof
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

# Created by `pipx` on 2026-03-06 12:21:11
export PATH="$PATH:/home/beholder/.local/bin"
