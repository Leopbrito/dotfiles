[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh

eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion


if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Starting MacOS config..."

    export COLORTERM=truecolor
    export TERM=xterm-256color
    export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
    export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Starting Linux config..."

    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh