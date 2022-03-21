# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# Allow colors to be rendered
export PAGER="less -R"

export EDITOR=nvim # Using nvim as terminal editor
export VISUAL=code # Using vscode as visual code editor

export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/bin/scripts:$PATH

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins that need to be installed/cloned manually
# https://github.com/zsh-users/zsh-autosuggestions
# https://github.com/zsh-users/zsh-syntax-highlighting
plugins=(
  git
  vscode
  zsh-autosuggestions
  zsh-syntax-highlighting
  poetry
  )

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh/aliases
eval "$(zoxide init zsh)"

[[ -f "$HOME/.zsh/nnn" ]] && source "$HOME/.zsh/nnn"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

SPLIT="v"
