############################################################
#options
############################################################
#changing directories
setopt autocd
setopt autopushd
setopt cdablevars
setopt pushdignoredups
#comletition
setopt completeinword
#expansion and globbing
setopt extendedglob
setopt no_nomatch
#history
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_verify
#initialization
#input/output
#job control
setopt notify
setopt no_hup
#prompting
setopt prompt_subst
#scripting and functions
#shell emulation
#shell state
#zle
setopt no_beep
setopt emacs
############################################################
#end options
############################################################
# history
HISTFILE=~/.history/zsh
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
#
autoload -Uz compinit
compinit

for config_file (~/dotfiles/zsh/lib/*.zsh) source $config_file
for plugin_file (~/dotfiles/zsh/plugins/*.zsh) source $plugin_file
source ~/dotfiles/zsh/aliases
source ~/dotfiles/zsh/robbyrussell.zsh-theme
source ~/dotfiles/zsh/base16-default.dark.sh

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable hg git
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr "✗"
zstyle ':vcs_info:*' stagedstr "✗"
zstyle ':vcs_info:hg*:*' get-bookmarks true
zstyle ':vcs_info:hg*' formats "%s:(%{$fg[red]%}%b%{$fg[blue]%})[%{$fg[red]%}%m%{$fg[blue]%}] %{$fg[yellow]%}%u%c%{$reset_color%}"
zstyle ':vcs_info:hg*:*' branchformat "%b" # only show branch
zstyle ':vcs_info:git*' formats "%s:(%{$fg[red]%}%b%{$fg[blue]%}) %{$fg[yellow]%}%u%c%{$reset_color%}"

precmd() {
  vcs_info
}

export EDITOR=vim
export PATH=~/Applications/bin:$PATH
export ZSH=~/.cache/zsh

[[ -s ~/.zshrc.local ]] && source ~/.zshrc.local
[[ -s "/etc/bash_completion.d/virtualenvwrapper" ]] && source "/etc/bash_completion.d/virtualenvwrapper"
