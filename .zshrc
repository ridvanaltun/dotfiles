
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/santa/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="powerlevel9k/powerlevel9k"
# POWERLEVEL9K_COLOR_SCHEME="light"
# POWERLEVEL9K_MODE='nerdfont-complete'
# POWERLEVEL9K_MODE='awesome-mapped-fontconfig'
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir dir_writable vcs virtualenv)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='maroon'
# POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='grey93'
# POWERLEVEL9K_STATUS_OK_FOREGROUND='teal'
# POWERLEVEL9K_STATUS_ERROR_FOREGROUND='maroon'
# POWERLEVEL9K_USER_DEFAULT_BACKGROUND='steelblue1'
# POWERLEVEL9K_USER_DEFAULT_FOREGROUND='white'

# Extra
ZSH_DISABLE_COMPFIX="true"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
	git
	extract
	zsh-autosuggestions
	del-line
	pm
	k
	# zsh-synyax-highlighting son satır olmak zorunda
        zsh-syntax-highlighting
)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Aliases
if [ -f ~/.aliases ]; then
	source ~/.aliases
fi

# Functions
if [ -f ~/.functions ]; then
	source ~/.functions
fi

# Docker
export DOCKER_HOST=tcp://127.0.0.1:2375

# X11 Server
export DISPLAY=:0

## Set colors for LS_COLORS
eval `dircolors ~/.dircolors`

# Powerlevel10k
source ~/.powerlevel10k/powerlevel10k.zsh-theme

# Powerlevel10k Tony Lambiris Style
source ~/.scripts/p10k-tony-lambiris.zsh

# 10x Faster Git Status
source ~/.gitstatus/gitstatus.prompt.zsh

# color formatting for man pages
export LESS_TERMCAP_mb=$'\e[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\e[1;36m'     # begin blink
export LESS_TERMCAP_so=$'\e[1;33;44m'  # begin reverse video
export LESS_TERMCAP_us=$'\e[1;37m'     # begin underline
export LESS_TERMCAP_me=$'\e[0m'        # reset bold/blink
export LESS_TERMCAP_se=$'\e[0m'        # reset reverse video
export LESS_TERMCAP_ue=$'\e[0m'        # reset underline
export GROFF_NO_SGR=1                  # for konsole and gnome-terminal

export MANPAGER='less -s -M -R +Gg'

# Bin
export PATH="$PATH:/home/santa/.bin/"

# PM functions
source ~/.pm/pm.zsh
alias pma="pm add"
alias pmg="pm go"
alias pmrm="pm remove"
alias pml="pm list"
# end PM

# Zplug
source ~/.zplug/init.zsh

# Zplug Plugins
zplug "supercrabtree/k"

# Default EDITOR
export EDITOR='nano'

# Tmuxinator
source ~/.bin/tmuxinator.zsh

# Automaticly Start Tmux
# if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#     tmux attach -t default || tmux new -s default
# fi

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## respect .gitignore
export FZF_DEFAULT_COMMAND='--extended'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# clang
export PATH=/usr/local/clang_9.0.0/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/clang_9.0.0/lib:$LD_LIBRARY_PATH
