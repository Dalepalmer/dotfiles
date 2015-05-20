# No greeting, please
set -e fish_greeting

# Universal
set -x PATH $HOME/.local/bin $PATH
set -x EDITOR vim
set -x VISUAL $EDITOR

# Set the Code directory
set -x CODE $HOME/Documents/Code

# Ruby
if test -f /usr/local/share/fry/fry.fish
    source /usr/local/share/fry/fry.fish
end

# Aliases
alias ag "ag --smart-case"
alias rm "trash"

if test -x (which exa)
    alias ls "exa"
end

# Source sensitive configuration
if test -f $HOME/.config/fish/local.fish
    source $HOME/.config/fish/local.fish
end
