# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

#Oh-my-zsh config
DOTFILES_DIR="/home/kenji/.dotfiles/"

# Allow colors to be rendered
export PAGER="less -R"

export EDITOR=nvim # Using nvim as terminal editor
export VISUAL="code -w" # Using vscode as visual code editor

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
  )

# Stop oh-my-zsh from updating
DISABLE_AUTO_UPDATE=true

##Start zoxide
eval "$(zoxide init zsh)"

[[ -f "$ZSH/oh-my-zsh.sh" ]] && source "$ZSH/oh-my-zsh.sh"
[[ -f "$HOME/.zsh/aliases.zsh" ]] && source "$HOME/.zsh/aliases.zsh"
[[ -f "$HOME/.zsh/nnn" ]] && source "$HOME/.zsh/nnn"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

SPLIT="v"

