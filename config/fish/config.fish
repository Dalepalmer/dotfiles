# No greeting, please
set -e fish_greeting

# Universal
set -x PATH $HOME/.local/bin $PATH
set -x EDITOR vim
set -x VISUAL $EDITOR

# Set the Code directory
set -x DEVELOPER $HOME/Developer

# Homebrew and brew-cask options
set -x HOMEBREW_CASK_OPTS "--appdir=~/Applications"

# Ruby
if test -d ~/.rbenv
  status --is-interactive; and . (rbenv init - | psub)
end

# jq
set -x JQ_COLORS "1;31:0;33:0;35:0;39:0;32:1;39:1;39"

# Aliases
alias ag "ag --smart-case"
alias rm "trash"

if test -x (which hub)
  eval (hub alias -s fish)
end

if test -x (which exa)
  alias ls "exa"
end

# Source sensitive configuration
if test -f $HOME/.config/fish/local.fish
  source $HOME/.config/fish/local.fish
end
