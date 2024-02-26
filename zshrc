export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"


plugins=(git zsh-autosuggestions vi-mode sudo zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh


    alias v="nvim"
    alias sd="shutdown now"
    alias re="reboot"
    alias cx="chmod+x"
    alias rmr="rm -r"
    bash capslock.sh
    xrandr --output eDP-1 --auto --output DP-2 --auto --right-of eDP-1 --rotate left
    xset r rate 400 100
    clear
export PATH="$PATH":"$HOME/.pub-cache/bin"

export PATH="/home/v/.flutter/flutter/bin:$PATH"
export JAVA_HOME=/usr/lib/jvm/default
export PATH=$PATH:$JAVA_HOME/bin
eval "$(zoxide init zsh)"

