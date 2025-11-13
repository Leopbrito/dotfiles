## Aliases ##

alias ls="eza --icons --group-directories-first"

if [[ "$OSTYPE" == "darwin"* ]]; then

    alias k="kubectl"
    alias clear="clear && printf '\e[3J'"

elif [[ "$OSTYPE" == "linux-gnu"* ]]; then

    alias k="sudo kubectl"
fi


