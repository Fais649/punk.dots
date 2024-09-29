
autoload -Uz compinit
compinit

export PATH="$HOME/.local/bin:$PATH:$HOME/.cargo/bin"
export EDITOR='nvim'
alias zshconfig="nvim ~/.zshrc"
eval "$(_PIO_COMPLETE=zsh_source pio)"
alias punkssh="ssh root@punk.systems"
export CHROME_EXECUTABLE="/usr/bin/google-chrome-stable"
alias inputs="echo dead | sudo -S input-remapper-service & sleep 2 && echo dead | sudo -S input-remapper-control --device 'Asus Keyboard' --preset default --command start"
export PATH="$PATH:$HOME/esp/xtensa-esp32-elf/bin"
export IDF_PATH=~/esp/esp-idf

export PKG_CONFIG_PATH=/usr/lib/wlroots0.17/pkgconfig:$PKG_CONFIG_PATH

alias idf="source /opt/esp-idf/export.sh && idf.py "

export JAVA_HOME=/opt/android-studio/jbr
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export ANDROID_HOME="$HOME/Android/Sdk"
export NDK_HOME="$ANDROID_HOME/ndk/$(ls -1 $ANDROID_HOME/ndk)"
export ANDROID_SDK_ROOT="$HOME/Android/Sdk/"
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
source $PUNKD/.fzfzsh
alias yd="yazi"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

### Added by Zinit's installer
# if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
#     print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
#     command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
#     command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
#         print -P "%F{33} %F{34}Installation successful.%f%b" || \
#         print -P "%F{160} The clone has failed.%f%b"
# fi
#
# source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
# autoload -Uz _zinit
# (( ${+_comps} )) && _comps[zinit]=_zinit
#
#   # Arch
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

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
export JAVA_HOME='/usr/lib/jvm/java-8-openjdk'
export PATH=/home/fais/.sdkman/candidates/java/current/bin:/home/fais/.nvm/versions/node/v22.9.0/bin:/home/fais/.sdkman/candidates/kotlin/current/bin:/home/fais/.sdkman/candidates/java/current/bin:/home/fais/.sdkman/candidates/gradle/current/bin:/home/fais/.local/bin:/home/fais/.cargo/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/opt/android-sdk/emulator:/opt/android-sdk/platform-tools:/var/lib/flatpak/exports/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/fais/.cargo/bin:/home/fais/esp/xtensa-esp32-elf/bin:/home/fais/Android/Sdk/emulator/
