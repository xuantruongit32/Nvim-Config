export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:$HOME/flutter/flutter/bin"


ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions vi-mode sudo)

source $ZSH/oh-my-zsh.sh

ZSH_THEME="agnoster"

#
source /home/v/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  alias c="cd"
    alias v="nvim"
    alias sd="shutdown now"
    alias re="reboot"
    alias cx="chmod+x"
    alias rmr="rm -r"
    ./capslock.sh
    xrandr --output eDP-1 --auto --output DP-2 --auto --right-of eDP-1 --rotate left
    xset r rate 400 100
    clear
export PATH="$PATH":"$HOME/.pub-cache/bin"
