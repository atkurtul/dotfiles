#!/usr/bin/env bash

alias q=exit
alias modx='chmod +x'
alias v=vim

export LS_COLORS="$LS_COLORS:ow=0;34:"
export PATH="$PATH:~/.local/bin:~/dotfiles/scripts"


export VISUAL=nvim
export EDITOR=nvim


function pushfast() {
  if [[ -z $1 ]]; then
  	msg="push"
  else
    msg="$1"
  fi
  git add .
  git commit -m $msg
  git push
}

function dumpcolor() {
  for x in {0..8}; do 
      for i in {30..37}; do 
          for a in {40..47}; do 
              echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "
          done
          echo
      done
  done
  echo ""
}

function listpkg() {
  comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)
}
