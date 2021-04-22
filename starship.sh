#!/usr/bin/env bash
# shellcheck disable=SC2034,SC2086

function set_win_title(){
  if [ "$(basename $PWD)" == "$(id -un)" ]; then
    echo -ne "\033]0; $(id -un)@$(hostname): ~ \007"
  else
    echo -ne "\033]0; $(id -un)@$(hostname): $(basename $PWD) \007"
  fi
}

starship_precmd_user_func="set_win_title"
