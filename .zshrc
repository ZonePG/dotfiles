# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000

[ ! -d ~/.cache/zsh ] && mkdir -p ~/.cache/zsh
[ ! -f ~/.cache/zsh/.zsh_history ] && touch ~/.cache/zsh/.zsh_history
HISTFILE=~/.cache/zsh/.zsh_history

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/zsh/.zprofile" ] && source "$HOME/.config/zsh/.zprofile"
[ -f "$HOME/.config/zsh/.zshrc" ] && source "$HOME/.config/zsh/.zshrc"
[ -f "$HOME/.config/zsh/.aliases" ] && source "$HOME/.config/zsh/.aliases"
