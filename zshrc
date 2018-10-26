autoload -Uz compinit
compinit
autoload -Uz colors
colors

export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export LSCOLORS=xbfxcxdxbxegedabagacad

zstyle ':completion:*' menu select
zstyle ':completion:*' matchar-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}


setopt correct
setopt no_beep
setopt interactive_comments
setopt auto_pushd
setopt magic_equal_subst
setopt prompt_subst
setopt equals
setopt auto_param_slash
setopt auto_list
setopt auto_menu
setopt list_types
setopt mark_dirs
setopt print_eight_bit
setopt list_packed

#prompt
PROMPT='%n:%F{6}%~%f %F{1}>%f '
RPROMPT='%T'

setopt HIST_IGNORE_DUPS

HISTFILE=${HOME}/.dotfiles/zsh/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

#Alias Settings
source ${HOME}/.dotfiles/zsh/.aliases

#Plugin Settings
source ${HOME}/.dotfiles/zsh/plugins/

#zsh-history-substring-search Settings
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

cdpath=(~)

#zsh-syntax-highlighting
if [ -f ${HOME}/.dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source ${HOME}/.dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

#zsh-prompt-powerline
#fpath+=( ${HOME}/.dotfiles/zsh/plugins/zsh-prompt-powerline )
#autoload promptinit ; promptinit
#prompt powerline
#zstyle ':prompt:powerline:ps1' sep1-char
#zstyle ':prompt:powerline:ps1' sep2-char
#zstyle ':prompt:powerline:ps1' lock-char
#zstyle ':prompt:powerline:ps1' branch-char

