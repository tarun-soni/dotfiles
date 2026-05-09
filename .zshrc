# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# robbyrussell
# awesomepanda
ZSH_THEME="bira"
export GPG_TTY=$(tty)

alias kp="kill-port"
alias czsh="cursor ~/.zshrc"
alias codezsh="code ~/.zshrc"
alias p="pnpm"

alias cc="claude --dangerously-skip-permissions"
alias ccpr="claude --dangerously-skip-permissions 'explain this PR'"


# dir aliases
alias pj="cd ~/Projects"
alias rmrfnode="rm -rf node_modules && rm -rf package-lock.json && rm -rf yarn.lock"

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


# git config --local http.sslVerify false
alias configSkip="git config --local http.sslVerify false"

# yalc dir
alias cdyalc="cd $HOME/.yalc"
alias ybp="yarn build:push"
# create alias to open current directory in finder
alias o="open -a Finder ."


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
plugins=(git react-native zsh-autosuggestions history )


source $ZSH/oh-my-zsh.sh

# Store original RPROMPT from theme (captured after theme loads)
_original_rprompt="$RPROMPT"

# Homebrew on PATH before nvm loads; nvm's `nvm use` prepends its Node and must run *after* any later PATH=... that prepends (see final load-nvmrc at end of file).
export PATH=/opt/homebrew/bin:$PATH

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


alias czsh="cursor ~/.zshrc"
alias codezsh="code ~/.zshrc"
alias w="open -a Warp ."

export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools



# Auto-switch Node when .nvmrc exists in cwd or any parent (same as `nvm use` without args)
autoload -U add-zsh-hook

# After ~/.local/bin/env, Homebrew, or other tools prepend PATH, the first `node` can be
# ~/.local/bin/node, brew, or another nvm version dir while `nvm which current` points at .nvmrc.
# nvm does not re-prepend its bin when `nvm use` is a no-op, so put `nvm which current` first.
nvm_prepend_active_bin_if_needed() {
  [[ -z "$NVM_DIR" ]] && return
  [[ -z "$(nvm_find_nvmrc 2>/dev/null)" ]] && return
  local want_node got_node bindir
  want_node="$(nvm which current 2>/dev/null)"
  [[ -z "$want_node" || ! -x "$want_node" ]] && return
  got_node="$(command -v node 2>/dev/null)"
  [[ "$got_node" == "$want_node" ]] && return
  bindir="$(dirname "$want_node")"
  export PATH="$bindir:$PATH"
}

load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [[ -n "$nvmrc_path" ]]; then
    local nvmrc_node_version
    nvmrc_node_version=$(nvm version "$(command cat "${nvmrc_path}")")

    if [[ "$nvmrc_node_version" == "N/A" ]]; then
      nvm install
    elif [[ "$nvmrc_node_version" != "$node_version" ]]; then
      nvm use
    fi
  elif [[ "$node_version" != "$(nvm version default)" ]]; then
    nvm use default
  fi
  if [[ -n "$(nvm_find_nvmrc 2>/dev/null)" ]]; then
    # Re-sync after any PATH= prepends; prepend active bin if something else still wins.
    nvm use >/dev/null 2>&1
    nvm_prepend_active_bin_if_needed
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

function precmd_repair_nvm_path() {
  nvm_prepend_active_bin_if_needed
}

# show node version in prompt (use node -v: matches pnpm and avoids subshell/nvm quirks)
function node_version_prompt_info() {
  if command -v node &> /dev/null; then
    echo "%F{green}node:$(node -v 2>/dev/null)%f"
  fi
}

# Update RPROMPT dynamically using precmd hook
function update_node_version_prompt() {
  local node_info
  node_info=$(node_version_prompt_info)
  if [[ -n "$node_info" ]]; then
    # Combine original theme RPROMPT with node version
    if [[ -n "$_original_rprompt" ]]; then
      RPROMPT="$_original_rprompt $node_info"
    else
      RPROMPT="$node_info"
    fi
  else
    # Restore original if no node info
    RPROMPT="$_original_rprompt"
  fi
}

add-zsh-hook precmd precmd_repair_nvm_path
add-zsh-hook precmd update_node_version_prompt


# should be at the end
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export PATH=$PATH:$HOME/.maestro/bin

. "$HOME/.local/bin/env"

# Added by Antigravity
export PATH="/Users/tarunsoni/.antigravity/antigravity/bin:$PATH"

# flashlight
export PATH="/Users/tarunsoni/.flashlight/bin:$PATH"

# Re-apply .nvmrc after anything above prepends to PATH (e.g. ~/.local/bin/env); otherwise Homebrew/node shims win over nvm.
load-nvmrc

export EXPO_EDITOR="cursor"
