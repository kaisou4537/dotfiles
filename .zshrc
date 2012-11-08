# 補完
autoload -Uz compinit
compinit

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

export CC=gcc-4.2
export LANG=ja_JP.UTF-8

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# C-s, C-qを無効にする
setopt no_flow_control

# フォルダ、ファイルに色をつける
case "${OSTYPE}" in
freebsd*|darwin*)
alias ls='ls -G -F'
;;
linux*)
alias ls='ls --color=auto'
;;
esac



#PATH=$PATH:/usr/local/bin

alias coteditor="open $1 -g -a CotEditor"

# sublime text 2の設定
alias subl=" /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
# rbenvの設定
eval "$(rbenv init -)"

