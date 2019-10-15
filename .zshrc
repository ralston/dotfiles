ssh-add

alias python=python3

export PATH=~/bin:$PATH
export PATH=~/Development/go/bin:$PATH
export PATH=$PATH:/home/ralston/.gem/ruby/2.6.0/bin
export ANDROID_HOME=/opt/android-sdk
export PATH=${ANDROID_HOME}/tools:$PATH
export PATH=${ANDROID_HOME}/platform-tools:$PATH
export PATH=~/Development/intellij/bin:$PATH
export PATH=~/.local/bin:$PATH

export NODE_ENV=development

source ~/Development/cwn/etc/aliases

alias pbcopy="xclip -selection c"
alias pbpaste="xclip -selection clipboard -o"

#wunderline
alias wl="wunderline"
alias wli="wunderline inbox"
alias wla="wunderline add" 

# git aliases:
git config --global alias.co checkout
git config --global alias.b branch
alias gcb="git checkout -b"
alias gs="git status"
alias g=git
alias gap="git add -p"
alias gsi="git submodule update --init"
alias gsr="git submodule foreach git reset --hard"
alias gcv="git commit --verbose"

# cwn
alias caps="xdotool key Caps_Lock"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export GOROOT=~/Development/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=~/Development/cwn/go

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:~/Development/cwn/third_party/protoc/linux

#lolwat
export PATH=$PATH:/home/ralston/Development/google-cloud-sdk/google-cloud-sdk/platform/google_appengine/goroot/bin
export PATH=$PATH:/home/ralston/Development/google-cloud-sdk/google-cloud-sdk/platform/google_appengine
export PATH=$PATH:~/Downloads/jdk1.8.0_131/bin

# set up nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

export EDITOR="nano"
export BROWSER=/usr/bin/chromium

fpath+=($fpath '/home/ralston/.nvm/versions/node/v7.9.0/lib/node_modules/pure-prompt/functions')

################# ZSH ############################

# Path to your oh-my-zsh installation.
export ZSH=/home/ralston/.oh-my-zsh

gbr() {
  COUNT=15
  BRANCHES=(`git for-each-ref --count=${COUNT} --sort=-committerdate refs/heads/ --format='%(refname)' | cut -d / -f 3-`)
  for (( i = 0 ; i < ${#BRANCHES[@]} ; i++ )) do
    echo "${i} ) ${BRANCHES[$i]}"
  done
  echo -n "Select a number > "
  read index
  echo "Switching to branch ${BRANCHES[$index]}..."
  g co ${BRANCHES[$index]} 2>&1 > /dev/null
}

alias gl="git_recent_branch"
git config --global alias.l "f(){git_recent_branch};f"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="lambda-mod-zsh-theme/lambda-mod"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(z)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

[ -s "$HOME/.rvm/scripts/rvm" ] && source "$HOME/.rvm/scripts/rvm"

[ -s "/home/ralston/.scm_breeze/scm_breeze.sh" ] && source "/home/ralston/.scm_breeze/scm_breeze.sh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"


# autoload -U promptinit; promptinit
# prompt pure

if [ -f ~/.dir_colors ]; then
    eval `dircolors ~/.dir_colors`
fi

source /usr/share/nvm/init-nvm.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/ralston/google-cloud-sdk/path.zsh.inc' ]; then . '/home/ralston/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/ralston/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/ralston/google-cloud-sdk/completion.zsh.inc'; fi
