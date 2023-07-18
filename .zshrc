# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
ZSH_THEME="robbyrussell"

export PATH=~/bin:~/opt/bin:~/go/bin::$PATH

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git autojump rbenv nvm)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
export EDITOR='nvim'

# flutter
if [ -d ~/dev/flutter/bin ]; then
    export PATH=$PATH::~/dev/flutter/bin
fi

# mysql client
if [ -d /usr/local/opt/mysql-client/bin ]; then
    export PATH=$PATH::/usr/local/opt/mysql-client/bin
fi

export ANDROID_HOME=/Volumes/idata/dev/Android/sdk

alias dphp="docker exec -it lap-php-fpm-1 /bin/zsh"

eval "$(starship init zsh)"
