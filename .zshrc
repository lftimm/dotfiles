ZSH_DISABLE_COMPFIX=true
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"


plugins=(git)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. "$HOME/.local/bin/env"

autoload -Uz compinit && compinit
autoload -Uz vcs_info

precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%b'

PROMPT=' %F{#11736D}%~ %F{#1793d1}❯%f '
RPROMPT='${vcs_info_msg_0_}'

export PATH="/home/tilt/.pixi/bin:$PATH"
export PATH=$PATH:/usr/lib64/openmpi/bin

alias vim="nvim"
alias v="nvim ."
alias p="cd ~/p"
alias cmake_release="cmake -DCMAKE_BUILD_TYPE=Release"
alias cpp="cd ~/p/cpp"

alias pcad="ssh -i ~/.ssh/id_ed25519.pub lftimm@pcad.inf.ufrgs.br"

