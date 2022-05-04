# Add zplug and zshrc man pages.
export MANPATH="/usr/local/man:${MANPATH}"
export MANPATH="${ZPLUG_HOME}/doc/man:${MANPATH}"
export MANPATH="$(dirname ${(%):-%x})/doc/man:${MANPATH}"

# Use XDG Base Directory Specification.
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
export XDG_CONFIG_DIRS=${XDG_CONFIG_DIRS:-/etc/xdg}
export XDG_DATA_DIRS=${XDG_DATA_DIRS:-/usr/local/share/:/usr/share/}

# Set Zsh history file.
export HISTFILE=${HISTFILE:-$XDG_CACHE_HOME/zsh/history}

# Bash -> Zsh - change $PATH.
export PATH="$HOME/bin:/usr/local/bin:/usr/bin:$PATH"

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Lang
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='nvim'

# Browser
export BROWSER=wslview

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# NVM
export NVM_DIR="$HOME/.config/nvm"
[ -s "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh" ] && \. "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Brew - Ruby
export PATH="$PATH:/home/linuxbrew/.linuxbrew/lib/ruby/gems/3.1.0/bin"

# GH shell completion:
eval "$(gh completion -s zsh)"
