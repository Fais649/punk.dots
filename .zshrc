# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH="$HOME/.local/bin:$PATH:$HOME/.cargo/bin"
# Path to your Oh My Zsh installation.
# ZSH=/usr/share/oh-my-zsh/
ZSH=/Users/faisalalalaiwat/.oh-my-zsh/

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="minimal"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-prompt)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
RPROMPT='$(date +"%H:%m")'

# Begin: PlatformIO Core completion support
eval "$(_PIO_COMPLETE=zsh_source pio)"
# End: PlatformIO Core completion support


alias punkssh="ssh root@punk.systems"

export CHROME_EXECUTABLE="/usr/bin/google-chrome-stable"
alias inputs="echo dead | sudo -S input-remapper-service & sleep 2 && echo dead | sudo -S input-remapper-control --device 'Asus Keyboard' --preset default --command start"
# source /opt/esp-idf/export.sh
export PATH="$PATH:$HOME/esp/xtensa-esp32-elf/bin"
export IDF_PATH=~/esp/esp-idf

export PKG_CONFIG_PATH=/usr/lib/wlroots0.17/pkgconfig:$PKG_CONFIG_PATH

alias idf="source /opt/esp-idf/export.sh && idf.py "

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export JAVA_HOME=/opt/android-studio/jbr
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export NDK_HOME="$ANDROID_HOME/ndk"
export ANDROID_SDK_ROOT="$ANDROID_HOME"
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

alias tauri="npm run tauri"
alias tauri-android-run="emulator -avd Medium_Phone_API_35 > /dev/null 2>&1  & sleep 10 && tauri android dev"
alias tauri-desktop-run="GDK_BACKEND=x11 tauri dev"
source $PUNKD/.fzfzsh

source $HOME/punk.systems/code/tauri/wispr/.env
