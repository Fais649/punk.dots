export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="minimal"
plugins=(git git-prompt fzf)
source $ZSH/oh-my-zsh.sh

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
precmd() {
    vcs_info
}
zstyle ':vcs_info:git*' formats "%b%F{white}%u%c%f "


setopt PROMPT_SUBST
RPROMPT=''
PROMPT='%F{white}[%n]%f | %F{red}%2~%f | %F{white}${vcs_info_msg_0_}%f$> '

export PATH="$HOME/.local/bin:$PATH:$HOME/.cargo/bin"
export EDITOR='nvim'
export PATH="$PATH:$HOME/esp/xtensa-esp32-elf/bin"
export IDF_PATH=~/esp/esp-idf
export CHROME_EXECUTABLE="/usr/bin/google-chrome-stable"
export PKG_CONFIG_PATH=/usr/lib/wlroots0.17/pkgconfig:$PKG_CONFIG_PATH
export ANDROID_HOME="$HOME/Android/Sdk"
export NDK_HOME="$ANDROID_HOME/ndk/$(ls -1 $ANDROID_HOME/ndk)"
export ANDROID_SDK_ROOT="$HOME/Android/Sdk/"
export PATH="$PATH:$ANDROID_HOME/emulator/"
export JAVA_HOME=/opt/android-studio/jbr
export JAVA_HOME='/usr/lib/jvm/java-22-openjdk/'
export PATH=/home/fais/.sdkman/candidates/java/current/bin:/home/fais/.nvm/versions/node/v22.9.0/bin:/home/fais/.sdkman/candidates/kotlin/current/bin:/home/fais/.sdkman/candidates/java/current/bin:/home/fais/.sdkman/candidates/gradle/current/bin:/home/fais/.local/bin:/home/fais/.cargo/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/opt/android-sdk/emulator:/opt/android-sdk/platform-tools:/var/lib/flatpak/exports/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/fais/.cargo/bin:/home/fais/esp/xtensa-esp32-elf/bin:/home/fais/Android/Sdk/emulator/

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PUNK="$HOME/punk.systems/"
export PUNKD="$HOME/punk.systems/dots/"
export PUNKC="$HOME/punk.systems/code/"

alias zshconfig="nvim ~/.zshrc"
alias punkssh="ssh root@punk.systems"
alias inputs="echo dead | sudo -S input-remapper-service & sleep 2 && echo dead | sudo -S input-remapper-control --device 'Asus Keyboard' --preset default --command start"
alias idf="source /opt/esp-idf/export.sh && idf.py "
alias punk="cd ~/punk.systems/ ; ls -la"
alias punkc="cd $PUNKC ; ls -la ;"
alias punkd="cd $PUNKD ; ls -la"
alias npunk="cd $PUNK && nvim \$(fzf)"
alias npunkc="cd $PUNKC && nvim \$(fzf)"
alias npunkd="cd $PUNKD && nvim \$(fzf)"

alias gs="git status"
alias gc="git checkout"
alias tauri="npm run tauri"
alias tauri-android-run="emulator -avd smol > /dev/null 2>&1  & sleep 10 && tauri android dev"
alias tauri-desktop-run="GDK_BACKEND=x11 tauri dev"
alias yd="yazi"
