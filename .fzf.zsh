# Setup fzf
# ---------
if [[ ! "$PATH" == */home/santa/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/santa/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/santa/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/santa/.fzf/shell/key-bindings.zsh"
