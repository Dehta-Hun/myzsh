# Move .zcompdump to .cache
zstyle ':completion::complete:*' cache-path $ZSH/cache/.zcompcache
zstyle ':zim:completion' dumpfile '$ZSH/cache/.zcompdump-$HOST'

#Typewritten prompt castomize
export TYPEWRITTEN_RELATIVE_PATH="git"
export TYPEWRITTEN_LEFT_PROMPT_PREFIX_FUNCTION=(date +%H:%M:%S)
export TYPEWRITTEN_RIGHT_PROMPT_PREFIX="#macos"
export TYPEWRITTEN_DISABLE_RETURN_CODE=true
export TYPEWRITTEN_PROMPT_LAYOUT="singleline"
export TYPEWRITTEN_COLORS="arrow:yellow;symbol:yellow;right_prompt_prefix:yellow"
ZSH_THEME="typewritten"
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

#ALIASES
alias python="python3"
alias work="ssh -J mironov_a@mironov-a mironov@192.168.2.2"
alias vim="nvim"
alias sshdesktop="ssh -p '2222' 'desktop-dehta'"
alias neofetch="clear && neofetch"
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"


# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"

#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='mvim'
fi


# Enable catppucin highlight !!! Have to be before zsh-syntax-highlighting
source ~/.config/catppuccin-syntax-highlighting/catppuccin_mocha-zsh-syntax-highlighting.zsh
