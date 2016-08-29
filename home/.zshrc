# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="steeef"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew copydir dirhistory themes)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

alias gup='git smart-pull'
alias gsl='git smart-log'
alias gsm='git smart-merge'
alias gql='git qlog -n 10'
alias grl='git reflog'
alias ls='ls -al'
alias fake_commit='git commit --amend --reuse-message HEAD && git push --force'
alias hs='homeshick'
alias gs='git status'
alias e='ember'
alias em='ember'
alias mgs='mgit st -sb'
alias mgp='mgit pull --rebase'
alias m='minion'
alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
alias oops='fuck'
alias fix='fuck'

#export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

. /usr/local/bin/aws_zsh_completer.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Added gnu-tar to path
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
. $HOME/z/z.sh

source /usr/local/bin/virtualenvwrapper.sh

ulimit -n 65536
ulimit -u 2048

eval "`npm completion`"
# Initialize rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# If pm2-gui isn't running then start it as a background process
if [ `ps aux | grep pm2-gui | wc -l` -eq 1 ] ; then 
  pm2-gui start > /dev/null 2>&1 &
fi
