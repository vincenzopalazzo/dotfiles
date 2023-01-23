screenfetch
PATH=/bin:/usr/bin:/usr/local/bin:${PATH}
export PATH

bitcoin_version="bitcoin-23.0"
lightning_version="clightning-v0.11.1"
dogecoin_version="dogecoin-1.14.4"
eth_version="geth-linux-amd64-1.10.3-991384a7"
go_version="go-1.16.3"
zig_version="zig-linux-x86_64-0.9.1"
store_version="VincentSSD"

# Path Bitcoin core
export PATH=$PATH:/media/vincent/$store_version/ToolCaseDevelopement/Bitcoin/$bitcoin_version/bin/
# Path C-lightninh
#export PATH=$PATH:/media/vincent/$store_version/ToolCaseDevelopement/Bitcoin/$lightning_version/bin/
# Path LND
export PATH=$PATH:/media/vincent/$store_version/ToolCaseDevelopement/Bitcoin/lnd-linux-amd64-v0.9.0-beta-rc1/
# Litecoin
export PATH=$PATH:/media/vincent/$store_version/ToolCaseDevelopement/Bitcoin/litecoin-0.17.1/bin
# dogecoin
export PATH=$PATH:/media/vincent/$store_version/ToolCaseDevelopement/Bitcoin/$dogecoin_version/bin/
# ETH
export PATH=$PATH:/media/vincent/$store_version/ToolCaseDevelopment/$eth_version

export PATH=$PATH:/media/vincent/VincentSSD/ToolCaseDevelopement/NodeJS/node-v16.2.0-linux-x64/bin
# Deno (NEW nodejs)
export PATH=$PATH:/media/vincent/$store_version/ToolCaseDevelopement/deno/1.0.0
# Gradle
# export PATH=$PATH:/opt/gradle/gradle-6.2.2/bin
# export PATH=$PATH:/media/vincent/VincentHDD/ToolCaseDevelopement/gradle-6.4/bin
export PATH=$PATH:/media/vincent/$store_version/ToolCaseDevelopement/gradle-6.7.1/bin

# React Native native platform
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Flutter sdk
export PATH="$PATH:/home/vincent/Documents/.flutter/flutter/bin"

#Alias LND
alias lnd='lncli --lnddir=/media/vincent/Maxtor/LND --rpcserver=localhost:10009'

#Bitcoin and CLightning client
alias bitcoincore='bitcoin-cli --datadir=/media/vincent/Maxtor/BitcoinCore/node'
alias clightning='lightning-cli --lightning-dir=/media/vincent/$store_version/.lightning'

#Dogecoin
alias dogecoin='dogecoin-cli -datadir=/media/vincent/VincentSSD/.dogecoin'
alias test-bitcoincore='bitcoin-cli --datadir=/media/vincent/Maxtor/BitcoinCore/node --testnet'
alias test-clightning='lightning-cli --lightning-dir=/media/vincent/Maxtor/C-lightning/node/testnet3'

export PATH="$PATH:/home/vincent/.emacs.d/bin"

# Go lang
export PATH=$PATH:/home/vincent/go/go1.19/bin
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
alias goversion='gofetch'

# OCaml
export PATH=$PATH:/media/vincent/$store_version/ToolCaseDevelopement/ocaml
# Alias ocaml interpreter
alias ocaml='rlwrap ocaml'

# OPam package manager for OCaml
export PATH=$PATH:/media/vincent/$store_version/ToolCaseDevelopement/ocaml
export PATH="$PATH":"$HOME/.pub-cache/bin"

# Zig lang
#export PATH=$PATH:/media/vincent/VincentSSD/ToolCaseDevelopement/$zig_version

# green address
export PATH=$PATH:/media/vincent/$store_version/apps
alias green='BlockstreamGreen-x86_64.AppImage'
alias pass='Bitwarden-1.24.6-x86_64.AppImage'

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export ZSH_2000_DISABLE_RIGHT_PROMPT='true'
export ZSH_2000_DEFAULT_USER='vincenzo'

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
#ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
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
# DISABLE_MAGIC_FUNCTIONS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git adb sudo svn z zsh-autosuggestions battery gb)

local hostname="%{$fg_bold[black]%}%m"
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='${hostname} ${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

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

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Set typewritten ZSH as a prompt

# opam configuration
test -r /home/vincent/.opam/opam-init/init.zsh && . /home/vincent/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/vincent/google-cloud-sdk/path.zsh.inc' ]; then . '/home/vincent/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/vincent/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/vincent/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="$HOME/.poetry/bin:$PATH"

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"
