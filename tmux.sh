#!/usr/bin/env bash

# custom function to start a new SSH session in a new tmux window
function t () {
  tmux new-window -n "$1" "ssh $1"
}