autoload -Uz compinit
compinit

source $HOME/.starship

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

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search
# autoload -Uz history-search-end
# zle -N history-beginning-search-backward-end history-search-end
# zle -N history-beginning-search-forward-end history-search-end
# bindkey "^[[A" history-beginning-search-backward-end
# bindkey "^[[B" history-beginning-search-forward-end

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh/plugins/zsh-autopair/autopair.zsh
source /usr/share/zsh/plugins/zsh-auto-notify/auto-notify.plugin.zsh

bindkey '	' autosuggest-accept
