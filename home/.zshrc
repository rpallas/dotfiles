# Path to your oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bureau"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# You may need to manually set your language environment
export LANG=en_GB.UTF-8

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
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git git-extras brew copypath dirhistory themes history macos)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH

# https://github.com/ohmyzsh/ohmyzsh/issues/6835#issuecomment-390216875
ZSH_DISABLE_COMPFIX=true

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
# ssh-add -K ~/.ssh/id_rsa_github

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

alias gup='git smart-pull'
alias gsl='git smart-log'
alias gsm='git smart-merge'
alias gql='git qlog -n 10'
alias grl='git reflog'
# brew install git-when-merged - it tells you the commit that merged another commit
alias gwm='git when-merged --abbrev 7'

# alias ls='ls -al'
alias fake_commit='git commit --amend --reuse-message HEAD && git push --force'
alias hs='homeshick'
alias gs='git status'
alias mgs='mgit st -sb'
alias mgp='mgit pull --rebase'
alias gcan='gc --amend -a --no-edit'
alias dirst='tree -I node_modules -L'
alias gpf='git push --force-with-lease'
alias el='exa --long'
alias elt='exa --long --tree -I "node_modules|coverage"'
alias htop='sudo htop'


#export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt
autoload bashcompinit && bashcompinit
complete -C '/usr/local/bin/aws_completer' aws

### Added gnu-tar to path
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"

export HOMESHICK_DIR=/opt/homebrew/opt/homeshick
source "/opt/homebrew/opt/homeshick/homeshick.sh"

# Ruby
# pre-reqisites:
# `brew install chruby ruby-install`
# `ruby-install ruby`
# `zsh`
# `chruby 3.1.2`
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh

# setup rupa/z
. "$HOME/bin/z.sh"

ulimit -n 12288
ulimit -u 1418

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "`npm completion`"

# use screen with 256 for tmux support
export TERM=screen-256color

### LESS ###
## Enable syntax-highlighting in less.
## brew install source-highlight
## First, add these two lines to ~/.bashrc
export LESSOPEN="| /opt/homebrew/Cellar/source-highlight/3.1.9_5/bin/src-hilite-lesspipe.sh %s"
export LESS=" -R "
alias less='less -m -N -g -i -J --underline-special --SILENT'
#alias more='less'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
