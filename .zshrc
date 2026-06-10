# Initialize Homebrew and Starship
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"

# Spark setup
export SPARK_HOME=/Users/A200315862/Application/spark-3.5.3-bin-hadoop3
export PATH=$PATH:$SPARK_HOME/bin

# Java setup for jdk 11
export JAVA_HOME="/Library/Java/JavaVirtualMachines/liberica-jdk-11.jdk/Contents/Home"
export PATH=$PATH:$JAVA_HOME/bin

#Java setup for jdk 21
#export JAVA_HOME=$(/usr/libexec/java_home -v 21)
#export PATH=$JAVA_HOME/bin:$PATH

#Kafka setup
PATH="$PATH:/Users/A200315862/Documents/kafka/kafka_app/kafka_2.13-4.0.0/bin"

# Scala setup 
export PATH=/usr/local/scala/bin:$PATH

# Go setup
export PATH=/usr/local/go/bin:$PATH

# User binaries
export PATH=$PATH:$HOME/bin

# Python setup
export PATH="/Library/Frameworks/Python.framework/Versions/3.13/bin/python3:$PATH"
export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/lib/py4j-0.10.9.7-src.zip:$PYTHONPATH

# Kind setup 
export KIND_PATH=/opt/homebrew/
export PATH=$PATH:$KIND_PATH/bin

#UV setup
export PATH="$HOME/.local/bin:$PATH"

# Auto completion
fpath=(/opt/homebrew/share/zsh-completions $fpath)

# FzF setup
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# h j k l key bindings for fzf
export FZF_DEFAULT_OPTS="--bind 'ctrl-j:down,ctrl-k:up'"

#rm function warning before deletion 
#rm() {
#    echo "Warning: deleting forcefully. Ignoring rm command"
#}


#aliases
alias vim='nvim'
#alias fdfind='fd'
alias ls='eza -alsold --icons --grid --long'
#alias paths
alias path='echo -e ${PATH//:/\\n}A'
#set -o vi


# h,j,k,l keys on terminal
set -o vi

. "$HOME/.local/bin/env"
