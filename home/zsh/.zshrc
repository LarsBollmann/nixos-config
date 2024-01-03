zstyle :compinstall filename '/home/lars/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{green}%n%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

autoload -Uz compinit promptinit
compinit
promptinit

# enable color support of ls and also add handy aliases
  if [ -x /usr/bin/dircolors ]; then
      test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
      alias ls='ls --color=auto'
      alias dir='dir --color=auto'
      alias vdir='vdir --color=auto'
      alias grep='grep --color=auto'
      alias fgrep='fgrep --color=auto'
      alias egrep='egrep --color=auto'
  fi

# some more ls aliases
    alias ll='ls -alF'
    alias la='ls -A'
    alias l='ls -CF'

alias s="kitty +kitten ssh"

# export PATH="$HOME/.local/texlive/2023/bin/x86_64-linux:$PATH"
# export VOLTA_HOME="$HOME/.volta"
# export PATH="$VOLTA_HOME/bin:$PATH"

# alias ls="lsd -la"

# # bun completions
# [ -s "/home/lars/.bun/_bun" ] && source "/home/lars/.bun/_bun"

# # bun
# export BUN_INSTALL="$HOME/.bun"
# export PATH="$BUN_INSTALL/bin:$PATH"
