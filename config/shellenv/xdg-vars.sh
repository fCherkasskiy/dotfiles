#!/usr/bin/env bash

if [[ "$OSTYPE" == darwin* ]]; then
  export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
  #export HOME=/Users/fcher
  export XDG_DATA_DIRS=~/.local/share
  export XDG_CONFIG_DIRS=~/.config
  export XDG_RUNTIME_DIR=~/Library/Application\ Support
else
  #export HOME=/home/fcher
  export XDG_DATA_DIRS=/usr/local/share:/usr/share
  export XDG_CONFIG_DIRS=/etc/xdg
  export XDG_RUNTIME_DIR=/run/user/$UID
fi

export XDG_CONFIG_HOME=~/.config
export XDG_DATA_HOME=~/.local/share
export XDG_CACHE_HOME=~/.cache
export XDG_BIN_HOME=~/.local/bin
export XDG_STATE_HOME=~/.local/state
