#!/usr/bin/env bash

if [[ $OSTYPE == "linux-gnu" ]]; then
  export TERMINFO="$XDG_DATA_HOME"/terminfo
  # echo "$TERMINFO" >~/terminfotest.txt
  export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo
  # echo "$TERMINFO_DIRS" >>~/terminfotest.txt
  export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
  export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
  export XCURSOR_PATH=/usr/share/icons:$XDG_DATA_HOME/icons
  export GNUPGHOME="$XDG_DATA_HOME"/gnupg
  export ICEAUTHORITY="$XDG_CACHE_HOME/ICEauthority"
fi

export SSH_AUTH_SOCK="$HOME/.bitwarden-ssh-agent.sock"
export LESSHISTFILE="${XDG_STATE_HOME}"/lesshst

export DOTNET_CLI_HOME="$XDG_DATA_HOME"/dotnet

export PLATFORMIO_CORE_DIR="$XDG_DATA_HOME"/platformio

export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker

export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export CARGO_HOME="$XDG_DATA_HOME"/cargo

export NVM_DIR="$HOME/.config/nvm"
export NPM_CONFIG_INIT_MODULE="$XDG_CONFIG_HOME"/npm/config/npm-init.js
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME"/npm
export NPM_CONFIG_TMP="$XDG_RUNTIME_DIR"/npm

export MPLCONFIGDIR="$XDG_CONFIG_HOME"/matplotlib
export PIXI_HOME="$XDG_DATA_HOME/pixi"
export PYTHON_HISTORY="$XDG_STATE_HOME/python_history"
export PYTHONSTARTUP="$XDG_CONFIG_HOME"/python/pythonrc.py
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_DATA_DIR="$XDG_DATA_HOME"/jupyter
export JUPYTER_PATH="$JUPYTER_DATA_DIR:$JUPYTER_PATH"

alias wget='wget --hsts-file=$XDG_DATA_HOME/wget-hsts'
