#!/usr/bin/env bash
# shellcheck source=/home/fcher/.config/shellenv/settings.sh

# export NVM_DIR="$HOME/.config/nvm"
# _lazy_load_nvm() {
#   unset -f nvm node npm npx
#   export NPM_CONFIG_INIT_MODULE="$XDG_CONFIG_HOME"/npm/config/npm-init.js
#   export NPM_CONFIG_CACHE="$XDG_CACHE_HOME"/npm
#   #export NPM_CONFIG_TMP="$XDG_RUNTIME_DIR"/npm
#   export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
#   export NODE_REPL_HISTORY="$XDG_STATE_HOME"/node_repl_history
#   [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
#   # [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
#   "$@"
# }
# nvm() { _lazy_load_nvm nvm "$@"; }
# node() { _lazy_load_nvm node "$@"; }
# npm() { _lazy_load_nvm npm "$@"; }
# npx() { _lazy_load_nvm npx "$@"; }
# echo "i just set up lazyload for node shit!"

# export CONDA_PATH="$XDG_DATA_HOME/miniforge3"
# _lazy_load_conda() {
#   unset -f conda
#   source "$CONDA_PATH/etc/profile.d/conda.sh"
#   "$@"
# }
# conda() { _lazy_load_conda conda "$@"; }
#
# export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
# # _lazy_load_pyenv() {
# #   unset -f pyenv
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init - zsh)"
# eval "$(pyenv virtualenv-init - zsh)"
#   "$@"
# }
# pyenv() { _lazy_load_pyenv pyenv "$@"; }
