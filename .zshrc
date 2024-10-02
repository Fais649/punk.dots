export PATH="$HOME/.local/bin:$PATH:$HOME/.cargo/bin"
export EDITOR='nvim'
alias zshconfig="nvim ~/.zshrc"
alias punkssh="ssh root@punk.systems"

export ANDROID_HOME="$HOME/Library/Android/sdk/"
export NDK_HOME="$HOME/Library/Android/sdk/ndk/27.1.12297006/"

export JAVA_HOME="$HOME/Library/Java/JavaVirtualMachines/openjdk-23/Contents/Home/"
export PATH="$PATH:$ANDROID_HOME/emulator/"
export PUNK="$HOME/punk.systems/"
export PUNKD="$HOME/punk.systems/dots/"
export PUNKC="$HOME/punk.systems/code/"

alias punk="cd ~/punk.systems/ ; ls -la"
alias punkc="cd ~/punk.systems/code/ ; ls -la ;"
alias punkd="cd ~/punk.systems/dots// ; ls -la"

alias npunk="cd ~/punk.systems/ && nvim \$(fzf)"
alias npunkc="cd ~/punk.systems/code/ && nvim \$(fzf)"
alias npunkd="cd ~/punk.systems/dots/ && nvim \$(fzf)"

alias gs="git status"
alias gc="git checkout"

alias tauri="npm run tauri"
alias tauri-android-run="emulator -avd Medium_Phone_API_35 > /dev/null 2>&1  & sleep 10 && tauri android dev"
alias tauri-desktop-run="GDK_BACKEND=x11 tauri dev"
alias yd="yazi"

HISTFILE=$HOME/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

zstyle ':completion:*' menu select
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'

autoload -U compinit && compinit
zmodload -i zsh/complist

unsetopt menu_complete
unsetopt flowcontrol

setopt prompt_subst
setopt always_to_end
setopt append_history
setopt auto_menu
setopt complete_in_word
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt interactivecomments
setopt share_history


git_prompt() {
  BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/*\(.*\)/\1/')

  if [ ! -z $BRANCH ]; then
    echo -n "%F{cyan}$BRANCH"

    STATUS=$(git status --short 2> /dev/null)

    if [ ! -z "$STATUS" ]; then
      echo "%F{magenta}*"
    fi
  fi
}

PS1='%F{grey}[%n]%f %F{grey}%2~$(git_prompt) %F{grey}%#> %F{reset}'

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search
bindkey -v
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

# source $HOME/.starship
# export JAVA_HOME='/usr/lib/jvm/java-8-openjdk'
