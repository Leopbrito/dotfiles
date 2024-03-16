
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh

# Load Angular CLI autocompletion.
source <(ng completion script)
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"

eval "$(starship init zsh)"
