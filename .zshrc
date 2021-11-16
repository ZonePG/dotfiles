# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/.zsh_history

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/zsh/.zprofile" ] && source "$HOME/.config/zsh/.zprofile"
[ -f "$HOME/.config/zsh/.zshrc" ] && source "$HOME/.config/zsh/.zshrc"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/zoupeng/.sdkman"
[[ -s "/Users/zoupeng/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/zoupeng/.sdkman/bin/sdkman-init.sh"

[ -f ~/.config/broot/launcher/bash/br ] && source ~/.config/broot/launcher/bash/br

alias luamake=/home/zonepg/.config/nvim/ls/lua-language-server/3rd/luamake/luamake

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
conda activate public
