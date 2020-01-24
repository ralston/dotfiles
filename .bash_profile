#
# ~/.bash_profile
#
[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[ -s "/home/ralston/.scm_breeze/scm_breeze.sh" ] && source "/home/ralston/.scm_breeze/scm_breeze.sh"

alias python="python2"

export PATH=~/bin:$PATH
export PATH=~/Development/go/bin:$PATH
export PATH=$PATH:/home/ralston/.gem/ruby/2.6.0/bin
export ANDROID_HOME=/opt/android-sdk
export PATH=${ANDROID_HOME}/tools:$PATH
export PATH=${ANDROID_HOME}/platform-tools:$PATH
export PATH=~/Development/intellij/bin:$PATH
export PATH=~/.local/bin:$PATH

