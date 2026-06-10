# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/A200315862/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/Users/A200315862/.fzf/bin"
fi

eval "$(fzf --bash)"
