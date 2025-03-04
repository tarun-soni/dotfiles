# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# robbyrussell
# awesomepanda
ZSH_THEME="bira"
export GPG_TTY=$(tty)

alias czsh="code ~/.zshrc"

# dir aliases
alias pj="cd ~/Projects"
alias gpj="cd ~/GA-Projects"
alias rmrfnode="rm -rf node_modules && rm -rf package-lock.json && rm -rf yarn.lock"
alias cdjio="cd ~/GA-Projects/jio"

# for running multiple android 
alias rna1="npx react-native run-android --variant=devDebug --port 8081 --deviceId emulator-5554"
alias rna2="npx react-native run-android --variant=devDebug --port 8088 --deviceId emulator-5556"

alias abdir="cd android/app/build/outputs/apk"

alias bootxl="emulator -avd Pixel_XL_API_33"
alias boot6="emulator -avd Pixel_6pro_API_33"
alias adbr="adb reverse tcp:8081 tcp:8081"
alias treec="tree  -I 'node_modules' | pbcopy"

# yarn
alias y="yarn"
alias yd="yarn dev"
alias ys="yarn start"
alias ya="yarn android"
# alias git no verify clone with a parameter
# git -c http.sslVerify=false clone
alias gnc="git -c http.sslVerify=false clone" 
alias gsshpull='git -c http.sslVerify=false pull'
alias gsshfetch='git -c http.sslVerify=false fetch'
alias gsshpush='git -c http.sslVerify=false push'
# npm config fix
alias npmfix="npm config fix"

alias jioweb="cd ~/GA-Projects/jio/jio-web"

# git config --local http.sslVerify false
alias configSkip="git config --local http.sslVerify false"

# yalc dir
alias cdyalc="cd $HOME/.yalc"
alias ybp="yarn build:push"
# create alias to open current directory in finder
alias o="open -a Finder ."

# current_branch=$(git rev-parse --abbrev-ref HEAD)

# alias cgb="echo Current branch: $current_branch"

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
plugins=(git react-native zsh-autosuggestions history you-should-use)


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home"
# export JAVA_HOME="/usr/bin/java"
export JAVA_HOME=$(/usr/libexec/java_home -v 11.0.15)

# for ruby in article 
# https://medium.com/@davidjasonharding/developing-a-react-native-app-on-an-m1-mac-without-rosetta-29fcc7314d70
export PATH=/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.0.0/bin:$PATH
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"


# for andorid
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

export ANDROID_HOME=$HOME/Library/Android/sdk

# bun completions
[ -s "/Users/tarunbhagchandsoni/.bun/_bun" ] && source "/Users/tarunbhagchandsoni/.bun/_bun"

# bun
export BUN_INSTALL="/Users/tarunbhagchandsoni/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export PATH=$PATH:$HOME/.maestro/bin

# show node version
function node_version_prompt_info() {
  if [[ -n "$NVM_DIR" && -s "$NVM_DIR/nvm.sh" ]]; then
    echo "($(nvm current))"
  fi
}

# if .nvmrc file is found run nvm use
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc ]]; then
    nvm use || nvm install
  else
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc



# show node version in prompt
export RPROMPT='$(node_version_prompt_info)'

# brew not found fix
export PATH=/opt/homebrew/bin:$PATH

export JAVA_HOME=$(/usr/libexec/java_home)

export OPENAI_API_KEY="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"
# eval "$(starship init zsh)"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


export PATH="$HOME/.fastlane/bin:$PATH"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/tarunbhagchandsoni/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# Added by Windsurf
export PATH="/Users/tarunbhagchandsoni/.codeium/windsurf/bin:$PATH"
