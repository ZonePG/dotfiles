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
