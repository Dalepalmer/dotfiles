# No greeting, please
set -e fish_greeting

# No need to re-evaluate environment variables in tmux
if [ -z "$TMUX" ]
  # Set the Code directory
  set -x CODE $HOME/Documents/Code

  # Local
  set -x PATH $HOME/.local/bin $PATH

  # Homebrew
  set -x PATH /usr/local/bin /usr/local/sbin $PATH
  set -x PATH $PATH /usr/local/share/npm/bin

  # Go
  set -x GOPATH /usr/local/share/go
  set -x PATH $PATH $GOPATH/bin

  # Vim
  set -x EDITOR vim
  set -x VISUAL $EDITOR

  # Ruby
  set -x RUBY_GC_HEAP_INIT_SLOTS 1000000
  set -x RUBY_HEAP_SLOTS_INCREMENT 1000000
  set -x RUBY_HEAP_SLOTS_GROWTH_FACTOR 1
  set -x RUBY_GC_MALLOC_LIMIT 100000000
  set -x RUBY_HEAP_FREE_MIN 500000

  # JRuby 2.0 mode
  set -x JRUBY_OPTS "--2.0 -Xcext.enabled=true"

  # Docker
  set -x DOCKER_CERT_PATH /Users/david/.boot2docker/certs/boot2docker
  set -x DOCKER_TLS_VERIFY 1
  set -x DOCKER_HOST tcp://192.168.59.104:2376
end

# Ruby
source /usr/local/opt/fry/share/fry/fry.fish

eval sh $HOME/.config/base16-shell/base16-tomorrow.dark.sh

# Aliases
alias ssh-add-all "ssh-add ~/.ssh/*id_rsa"
alias ag "ag --smart-case"
alias pianobar "pianokeys; and /usr/local/bin/pianobar"

if [ (which exa) ]
  alias ls "exa"
end

# Source sensitive configuration
if [ -f "$HOME/.local/share/config.fish" ]
  source $HOME/.local/share/config.fish
end
