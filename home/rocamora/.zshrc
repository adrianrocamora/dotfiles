# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/isla/.oh-my-zsh"

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
#plugins=(git)
plugins=(git battery python catimg django docker tig vagrant yarn web-search  tmux pip npm node ng jsontools httpie gradle common-aliases command-not-found)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='mvim'
fi

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

export PATH="$PATH:/home/isla/.local/bin"
export PATH=~/apps:$PATH
# export ANDROID_HOME=/home/isla/Android/Sdk/
export ANDROID_HOME="/opt/android-sdk/"
export PATH=$PATH:$ANDROID_HOME/emulator 
export PATH=$PATH:$ANDROID_HOME/tools 
export PATH=$PATH:$ANDROID_HOME/tools/bin 
export PATH=$PATH:$ANDROID_HOME/platform-tools

setxkbmap -option caps:swapescape

# npm config set prefix /home/rocamora/.npmglobal
export PATH=/home/isla/.npmglobal/bin:$PATH
export PATH=/home/isla/code/dotfiles/home/rocamora/util:$PATH

export GRADLE_USER_HOME=/home/isla/.gradle

export PATH=$PATH:~/code/other/dasht/bin

#alias neofetch="neofetch --ascii_distro mac"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias vd='nvim ~/code/mdwiki/daily.md'
alias vw='nvim ~/code/mdwiki/wishlist.md'
alias vk='nvim ~/code/mdwiki/wiki/kanban.md'

alias gac='git add . ; git commit -m Updates'
alias gss='git status'
alias gps='git push'
alias gpl='git pull'
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)'"
alias gcm="git add -u; git commit -m "

alias prs="~/code/dotfiles/home/rocamora/util/play_random_song.sh"
alias dya="~/code/dotfiles/home/rocamora/util/download_youtube_audio.sh"

alias ccm="cd ~/code/mdwiki"
alias ccmi="cd ~/code/mia"
alias ccd="cd ~/code/dotfiles"
alias cck="cd ~/code/kng"
alias cca="cd ~/code/adrianrocamora.github.io"
alias ccbf="cd ~/code/biofist"
alias ccbl="cd ~/code/blog"
alias ccw="cd ~/code/writing"

alias kidiff="kitty +kitten diff "

alias stmdokidoki="steam steam://rungameid/698780"
alias stmdontstarve="steam steam://rungameid/219740"
alias stmftl="steam steam://rungameid/212680"
alias stmsteamworlddig="steam steam://rungameid/252410"
alias stmsupermeatboy="steam steam://rungameid/40800"
alias stmsuperbrothers="steam steam://rungameid/204060"
alias stmmhrd="steam steam://rungameid/576030"
alias stmchrono="steam steam://rungameid/613830"
alias stmbotanicula="steam steam://rungameid/421120"
alias stmbraid="steam steam://rungameid/26800"
alias stmcrypt="steam steam://rungameid/247080"
alias stmevilgenius="steam steam://rungameid/3720"
alias stmduet="steam steam://rungameid/292600"

alias tclock="/home/rocamora/code/other/tty-clock/tty-clock"
alias i3f="i3lock-fancy"
