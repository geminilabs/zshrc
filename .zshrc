export ZSH=$HOME/.oh-my-zsh
export ARCHFLAGS="-arch x86_64"
export HISTSIZE=100000 SAVEHIST=100000 HISTFILE=~/.zhistory
export SSH_KEY_PATH="~/.ssh/rsa_id"

DISABLE_AUTO_UPDATE="false"
COMPLETION_WAITING_DOTS="true"

# Add wisely, as too many plugins slow down shell startup.
plugins=(colored-man colorize command-not-found common-aliases composer cp extract git history history-substring-search ubuntu wp-cli zsh-syntax-highlighting)

setopt BRACE_CCL

source $ZSH/oh-my-zsh.sh

# User configuration
# -------------------------
export PATH=$HOME/bin:$PATH

# Theme
# -------------------------
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='%{$fg_bold[magenta]%}%n %{$reset_color%}${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'
RPROMPT="%{$FG[242]%}${SSH_TTY:+[%m]}%{$FX[reset]%}"

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

# Aliases
# -------------------------
alias backup="sh ${HOME}/bin/backup.sh"

