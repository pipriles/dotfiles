#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export VISUAL="vim"

# added by Anaconda3 4.3.0 installer
export PATH="/home/oswald/.anaconda3/bin:$PATH"
export ANDROID_HOME=/opt/android-sdk
