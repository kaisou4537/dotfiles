# Emacs style key binding
bindkey -e

# 補完
autoload -U compinit
compinit

#### ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# 履歴ファイルに時刻を記録
setopt extended_history

# 履歴をインクリメンタルに追加
setopt inc_append_history

# スペースで始まるコマンド行はヒストリリストから削除
setopt hist_verify


export CC=gcc-4.2
export LANG=ja_JP.UTF-8

# 補完の時に大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 先頭がスペースならヒストリーに追加しない
setopt hist_ignore_space

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# C-s, C-qを無効にする
setopt no_flow_control

# rm * を実行する前に確認する
setopt rmstar_wait


#### set alias

alias coteditor="open $1 -g -a CotEditor"

# sublime text 2の設定
alias subl=" /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"

alias la="ls -lhAF"


# rbenvの設定
eval "$(rbenv init -)"

### 解凍設定		
function extract () {
 	if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.tar.xz)    tar xvJf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       unrar x $1     ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *.lzma)      lzma -dv $1    ;;
          *.xz)        xz -dv $1      ;;
          *)           echo "don't know how to extract '$1'..." ;;
      esac
  else
      echo "'$1' is not a valid file!"
  fi
}
alias ex='extract'


# フォルダ、ファイルに色をつける
case "${OSTYPE}" in
freebsd*|darwin*)
alias ls='ls -FGh'
;;
linux*)
alias ls='ls --color=auto'
;;
esac

