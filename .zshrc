# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

#Theme and theme setup
POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel9k/powerlevel9k"

#Powerlevel theme setup
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
POWERLEVEL9K_ALWAYS_SHOW_USER=true
DEFAULT_USER=$USERNAME
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv status load ram_joined battery os_icon time)
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S \uf073 %d.%m.%y}"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='blue'
POWERLEVEL9K_TIME_BACKGROUND="cyan"
POWERLEVEL9K_TIME_FOREGROUND="black"
POWERLEVEL9K_BATTERY_ICON='\uf1e6'

if [[ -r /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh ]]; then source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh
fi

plugins=(git sudo docker docker-compose zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Content parser config
export INPUT_FILE_PATH=/home/predrag/Code/nano-new-data/
export OUTPUT_FILE_PATH=/home/predrag/Desktop/dataset.txt
export ERROR_FILE_PATH=/home/predrag/Desktop/failed_urls.txt

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# default AWS profile
export AWS_PROFILE=predrag

# Java
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/

# Python
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python3.8/dist-packages/

# Bazel
export PATH="$PATH:$HOME/bin"

# Poetry
export PATH="$HOME/.poetry/bin:$PATH"

#Druid
export DRUID_SKIP_JAVA_CHECK=1
export DRUID_HOSTS=localhost

#NodeJS
export NODEJS_HOME=/usr/local/lib/node/nodejs
export PATH="$NODEJS_HOME/bin:$PATH"

#MLFlow server
export MLFLOW_TRACKING_URI=http://192.168.10.24:5000

export INSTALL4J_JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre

# Airflow
export AIRFLOW_GPL_UNIDECODE=yes

# GCP
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.8
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Code

source ~/.local/bin/virtualenvwrapper.sh

alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"

# . /home/predrag/torch/install/bin/torch-activate

# Python 3.8
# alias python=/usr/bin/python3.8

# Dev directory
alias code="cd $HOME/Code"

# fortune | cowsay

source /home/predrag/Code/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
