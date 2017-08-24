# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/lmatthews/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
plugins=(git)

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
alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Ivy setup for SBT 

# "Also, add some SBT_OPTS to your shell file (e.g. ~/.bashrc, or ~/.zshrc) to setup memory settings, 
# proxy settings, and to pass in sbt.override.build.repos=true"

export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:ReservedCodeCacheSize=128m -Xms1048m -Xmx2048m -XX:ReservedCodeCacheSize=256m  -Dhttps.proxyHost=proxy-l -Dhttps.proxyPort=3128 -Dhttps.nonProxyHosts=localhost\|127.0.0.*\|192.168.* -Dsbt.override.build.repos=true"


export WORKSPACE='/home/lmatthews/hmpo/backend'

alias int_pg_low="ssh intldat-pgs.int.hmpo.net -L 5432:localhost:5432"
alias int_passport_status="ssh inthapp1.int.hmpo.net -L 8680:localhost:8680"
alias int_mongo="ssh inthdat1.int.hmpo.net -L 27017:localhost:27017"
alias int_lapp1="ssh intlapp1.int.hmpo.net"
alias int_frontend1="ssh intlweb1.int.hmpo.net"

alias sit_happ1="ssh sithapp1.sit.hmpo.net"
alias sit_happ2="ssh sithapp2.sit.hmpo.net"
alias sit_lapp1="ssh sitlapp1.sit.hmpo.net"
alias sit_lapp2="ssh sitlapp2.sit.hmpo.net"

alias sit_frontend1="ssh sitlweb1.sit.hmpo.net"
alias sit_frontend2="ssh sitlweb2.sit.hmpo.net"
alias sit_mongo="ssh sithdat1.sit.hmpo.net"
alias sit_pg_low="ssh sitldat-pgs.sit.hmpo.net"

alias stg_mongo="ssh stghdat1.stg.hmpo.net"
alias stg_happ1="ssh stghapp1.stg.hmpo.net"
alias stg_pg="ssh stgldat-pgs.stg.hmpo.net"
alias stg_lapp1="ssh stglapp1.stg.hmpo.net"

alias prd_happ1="ssh prdhapp1.prd.hmpo.net"
alias prd_happ2="ssh prdhapp2.prd.hmpo.net"
alias prd_happ3="ssh prdhapp3.prd.hmpo.net"
alias prd_happ4="ssh prdhapp4.prd.hmpo.net"

alias prd_lapp1="ssh prdlapp1.prd.hmpo.net"
alias prd_lapp2="ssh prdlapp2.prd.hmpo.net"
alias prd_lapp3="ssh prdlapp3.prd.hmpo.net"
alias prd_lapp4="ssh prdlapp4.prd.hmpo.net"
alias docker-up='/home/lmatthews/hmpo/backend/util-scripts/docker/docker-run-all.sh'

alias rang="python ~/Apps/ranger/ranger.py"
alias gitch="git checkout master"

/usr/bin/setxkbmap -option "caps:swapescape"
