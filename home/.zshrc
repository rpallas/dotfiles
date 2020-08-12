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

# https://github.com/ohmyzsh/ohmyzsh/issues/6835#issuecomment-390216875
ZSH_DISABLE_COMPFIX=true

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew copydir dirhistory themes history osx zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# Go development
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

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
# ssh-add -K ~/.ssh/id_rsa_github

alias build='rm -rf node_modules && npm i'
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
alias e='ember'
alias em='ember'
alias mgs='mgit st -sb'
alias mgp='mgit pull --rebase'
alias gcan='gc --amend -a --no-edit'
alias dirst='tree -I node_modules -L'
alias gpf='git push --force-with-lease'
alias kc='kubectl'
alias mk='minikube'
alias kcsc='kubectl config set-context $(kubectl config current-context)'
alias node6='npx node@6'
alias node8='npx node@8'
alias node10='npx node@10'
alias nodelts='npx node@lts'
alias el='exa --long'
alias elt='exa --long --tree -I "node_modules|coverage"'

eksAdminToken(){
  kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep eks-admin | awk '{print $1}')
}

#export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

. /usr/local/bin/aws_zsh_completer.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Added gnu-tar to path
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"

source "$HOME/.homesick/repos/homeshick/homeshick.sh"

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
### Added gnu-tar to path
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"

source "$HOME/.homesick/repos/homeshick/homeshick.sh"

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
. $HOME/z/z.sh

# Enable kubectl autocomplete
source <(kubectl completion zsh)

#source /usr/local/bin/virtualenvwrapper.sh

ulimit -n 12288
ulimit -u 1418

eval "`npm completion`"
# Initialize rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# If pm2-gui isn't running then start it as a background process
if [ `ps aux | grep pm2-gui | wc -l` -eq 1 ] ; then 
  pm2-gui start > /dev/null 2>&1 &
fi

# use screen with 256 for tmux support
export TERM=screen-256color

export PATH="/usr/local/sbin:$PATH"

### LESS ###
## Enable syntax-highlighting in less.
## brew install source-highlight
## First, add these two lines to ~/.bashrc
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=" -R "
alias less='less -m -N -g -i -J --underline-special --SILENT'
#alias more='less'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

