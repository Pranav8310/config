# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/a200315862/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/Users/a200315862/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/a200315862/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/a200315862/.fzf/shell/key-bindings.zsh"



# Setting up some environment variables for fzf
#----------------------------------------------
#fzf tree preview for directories.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf "$@" --preview 'tree -C {} | head -200' ;;
    *)            fzf "$@" ;;
  esac
}

#Options
export FZF_CTRL_R_OPTS="
  --preview 'echo {}' 
  --preview-window down:3:hidden:wrap 
  --bind '?:toggle-preview'"

export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"
#export FZF_DEFAULT_OPTS="--bind 'ctrl-j:down,ctrl-k:up'"

export FZF_CTRL_T_OPTS="
  --preview 'bat --theme gruvbox-dark --style=numbers --color=always --line-range :50 {}' 
  --bind ctrl-j:preview-page-down,ctrl-k:preview-page-up"
export FZF_TMUX_OPTS='-p80%,60%'

#commands
export FZF_DEFAULT_COMMAND='fd . /Users/a200315862 --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME --hidden"
