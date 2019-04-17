# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/klebersoares/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# zsh tmux settings
ZSH_TMUX_AUTOSTART='true'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  sudo
  git
  history
  taskwarrior
  tmux
  tmuxinator
  zsh-autosuggestions
  zsh-completions
  zsh-syntax-highlighting
)

autoload -U compinit && compinit

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
alias vi="vim"
alias vim="nvim"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias init="vim ~/.config/nvim/init.vim"
alias tmuxconf="vim ~/.tmux.conf"
alias ws="cd ~/Documents/Workspace/code"
alias murucutu="ssh root@192.155.93.236"
alias jacurutu="ssh kleber@134.209.70.17"
alias tunel="./ngrok http 8000"
alias manage='python $VIRTUAL_ENV/../manage.py'
alias run='python $VIRTUAL_ENV/../manage.py runserver'
alias rmmigrations='find . -path "*/migrations/*.py" -not -name "__init__.py" -delete'
alias rmmigrationscache='find . -path "*/migrations/*.pyc"  -delete'
alias emulator="/Users/klebersoares/Library/Android/sdk/emulator/emulator -avd Nexus_5X_API_28 -netdelay none -netspeed full -dns-server 8.8.8.8"
alias worknow="./cli/start_work.sh"
alias reviewnow="./cli/start_review.sh"
alias nb="manage shell_plus --notebook"

# pyenv venv
function _eac {
  pyenv activate $*;
}
alias eac="_eac"
alias ede="pyenv deactivate"
###################################

# Make, Activate venv
function _venvmk {
  python -m venv $*;
}
alias venvmk=_venvmk

function _venvac {
  source $*/bin/activate;
}
alias venvac=_venvac
alias venvde="deactivate"
###################################

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# export EDITOR='vim'
export PATH="/usr/local/opt/gettext/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/klebersoares/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

export PATH=$PATH:`pwd`/flutter/bin
export PATH="~/Library/Android/sdk/build-tools/28.0.3/zipalign:$PATH"


export LANG="pt_BR.UTF-8"
export LC_COLLATE="pt_BR.UTF-8"
export LC_CTYPE="pt_BR.UTF-8"
export LC_MESSAGES="pt_BR.UTF-8"
export LC_MONETARY="pt_BR.UTF-8"
export LC_NUMERIC="pt_BR.UTF-8"
export LC_TIME="pt_BR.UTF-8"
export LC_ALL="pt_BR.UTF-8"