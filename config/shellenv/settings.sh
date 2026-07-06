#!/usr/bin/env bash
# shellcheck source=/home/fcher/.config/shellenv/settings.sh
# ========== PATH ==========
if command -v bob &>/dev/null; then export PATH=$XDG_DATA_HOME/bob/nvim-bin:$PATH; fi
if command -v pixi &>/dev/null; then
  export PATH="$PIXI_HOME/bin:$PATH"
  # shellcheck disable=SC2329
  direnv_pixi() {
    echo 'watch_file pixi.lock' >>.envrc
    echo "eval \"\$(pixi shell-hook)\"" >>.envrc
    direnv allow
  }
fi
export PATH=$XDG_BIN_HOME:$PATH

# ========== VARS ==========
if [[ "$OSTYPE" == darwin* ]]; then
  if [[ -d "/opt/local" ]]; then export PATH="/opt/local/bin:/opt/local/sbin:$PATH"; fi
  macos_gnat_path="/Users/fcher/.local/share/alire/toolchains/gnat_native_*/bin"
  if [[ -d "$macos_gnat_path" ]]; then export PATH="$PATH:$macos_gnat_path"; fi
  if [[ -d "/opt/local/libexec/gnubin" ]]; then
    export GNUPATH="/opt/local/libexec/gnubin"
    ln -sf /bin/stty "$XDG_BIN_HOME/stty"
    export PATH="$GNUPATH:$PATH"
    export CLICOLOR=1
  fi
  # mac_manpath="/Library/Developer/CommandLineTools/usr/share/man:/Library/Developer/CommandLineTools/SDKs/MacOSX13.3.sdk/usr/share/man:/Library/Developer/CommandLineTools/SDKs/MacOSX13.1.sdk/usr/share/man:/Library/Developer/CommandLineTools/SDKs/MacOSX14.2.sdk/usr/share/man:/Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/share/man"
  if [[ -d "$GNUPATH/man" ]]; then
    export MANPATH="$GNUPATH/man:$MANPATH"
  fi
  source "$SHELLENV_DIR/lazy.sh"
elif [[ "$OSTYPE" == linuxgnu ]]; then
  true
else
  source "$XDG_CONFIG_HOME/shellenv/git-prompt.sh"
  PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'
  PS1='\[\e[92m\]\u\[\e[92m\]@\[\e[92m\]\h\[\e[0m\] \[\e[94;1m\]\w\[\e[0m\]${PS1_CMD1} '
fi

#if [[ $(nvim --version) ]]; then
if command -v nvim >/dev/null 2>&1; then
  export EDITOR="nvim"
  export VISUAL="nvim"
  unset VIMINIT
else
  export EDITOR="vim"
  export VISUAL="vim"
  # shellcheck disable=SC2016
  export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
fi

export DOTDIR="$HOME/dotfiles"

export MANROFFOPT="-c"
export LESS="-inRFXx4"
if command -v bat >/dev/null; then
  export PAGER="bat -p"
  export MANPAGER="sh -c 'col -bx | bat -l man -p'"
else
  export PAGER="cat"
  export MANPAGER="less -Dd+r -Du+b"
fi

if [ -d "$SSH_AUTH_SOCK" ]; then export SSH_AUTH_SOCK; fi
if [[ -f $CARGO_HOME/env ]]; then source "$CARGO_HOME/env"; fi

# Cleans the $PATH of duplicates while keeping the original order
# shellcheck disable=SC2329
path_clean() {
  export PATH
  PATH=$(echo -n "$PATH" | awk -v RS=: -v ORS=: '!x[$0]++' | sed 's/:$//')
}

# shellcheck disable=SC2329
clear_tpm() {
  if [[ -d $XDG_CONFIG_HOME/tmux/plugins ]]; then
    rm -rf "$XDG_CONFIG_HOME/tmux/plugins/"
  else
    echo "No tmux plugins directory found??"
  fi
}

if command -v rg &>/dev/null; then alias grep='rg'; fi
if command -v xdg-open &>/dev/null; then alias open='xdg-open'; fi
if command -v yay &>/dev/null; then alias yyay='yes | yay'; fi
if command -v fdfind &>/dev/null; then alias fd='fdfind'; fi
if command -v batcat &>/dev/null; then alias bat='batcat'; fi
# Listing is so fun
alias ls="ls -bFh -v --group-directories-first --color=auto"
if command -v lsd &>/dev/null; then
  alias l="lsd"
  alias llal="l --ignore-config -vlAF --group-directories-first --date '+%m/%d/%y %H:%M:%S' --header --git --hyperlink auto"
else
  alias l="ls -1"
  alias llal="ls -v -l"
fi
alias la="l -A"
alias ll="l -l"
alias lla="l -Al"
alias lall="llal" # Becuase I mistype a lot

alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

alias edit='$EDITOR'
alias v='edit'
alias sv='sudoedit'
alias c="clear"
alias py="python"
alias q="exit"
alias lg="lazygit"

alias xdg-ninja='xdg-ninja --skip-unsupported'
alias installdots='eval "$DOTDIR/install" -v'
alias conf='$EDITOR ~/.dotbot'
alias confbash='$EDITOR ~/.dotbot/config/bash'
alias confzsh='$EDITOR ~/.dotbot/config/zsh'
alias confsettings='$EDITOR $XDG_CONFIG_HOME/shellenv/settings.sh'

source "$SHELLENV_DIR/alias.sh"
source "$SHELLENV_DIR/functions.sh"
