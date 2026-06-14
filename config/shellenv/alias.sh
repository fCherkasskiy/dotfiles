#!/usr/bin/env bash

# alias ps='ps auxf'
# alias ping='ping -c 10'
# alias less='less -R'
# alias cls='clear'
# alias apt-get='sudo apt-get'
# alias yayf="yay -Slq | fzf --multi --preview 'yay -Sii {1}' --preview-window=down:75% | xargs -ro yay -S"
# alias tree='tree -a -I .git'

# Change directory aliases
alias home='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# cd into the old directory
# alias bd='cd "$OLDPWD"'

# Remove a directory and all files
alias rmd='rm  --recursive --force --verbose '

## Alias's for multiple directory listing commands
# alias la='ls -Alh'                # show hidden files
# alias ls='ls -aFh --color=always' # add colors and file type extensions
# alias lx='ls -lXBh'               # sort by extension
# alias lk='ls -lSrh'               # sort by size
# alias lc='ls -ltcrh'              # sort by change time
# alias lu='ls -lturh'              # sort by access time
# alias lr='ls -lRh'                # recursive ls
# alias lt='ls -ltrh'               # sort by date
# alias lm='ls -alh |more'          # pipe through 'more'
# alias lw='ls -xAh'                # wide listing format
# alias ll='ls -Fls'                # long listing format
# alias labc='ls -lap'              # alphabetical sort
# alias lf="ls -l | egrep -v '^d'"  # files only
# alias ldir="ls -l | egrep '^d'"   # directories only
# alias lla='ls -Al'                # List and Hidden Files
# alias las='ls -A'                 # Hidden Files
# alias lls='ls -l'                 # List
## Count all files (recursively) in the current folder
# alias countfiles="for t in files links directories; do echo \`find . -type \${t:0:1} | wc -l\` \$t; done 2> /dev/null"
## Show open ports
# alias openports='netstat -nape --inet'
## Alias's to show disk space and space used in a folder
alias diskspace="du -S | sort -n -r |more"
alias folders='du -h --max-depth=1'
alias folderssort='find . -maxdepth 1 -type d -print0 | xargs -0 du -sk | sort -rn'
alias tree='tree -CAhF --dirsfirst'
alias treed='tree -CAFd'
alias mountedinfo='df -hT'
## Alias's for archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'
# KITTY - alias to be able to use kitty features when connecting to remote servers(e.g use tmux on remote server)
# alias kssh="kitty +kitten ssh"
#
#
## Bread on Penguins
# 2m="for f in *(png|jpg)(LM+2); do mogrify -scale 97% $f; done" \
# grep="grep --color=auto" \
alias \
  \
  fk="sudo !!" \
  mv="mv -i" \
  rm="rm -Iv" \
  df="df -h" \
  du="du -h -d 1" \
  k="killall" \
  sensors="sensors | bat -l cpuinfo -p"
# exiftool="/usr/bin/vendor_perl/exiftool" \
freec() {
  exec free -h "$@" | bat -l cpuinfo -p
}
lsbc() {
  exec lsblk "$@" | bat -l conf -p
}
help() {
  "$@" --help 2>&1 | bat -l help -p
}
shell() {
  exec "$SHELL" -l
}
p() {
  ps aux | rg "$1"
}
