# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set name of the theme to load
ZSH_THEME="powerlevel10k/powerlevel10k"

HIST_STAMPS="dd.mm.yyyy"

plugins=(
  git python rust
  kubectl aws terraform
  zsh-autosuggestions zsh-syntax-highlighting
  wakatime
  colorize colored-man-pages
)

source "$ZSH/oh-my-zsh.sh"

for rc in "$HOME"/.zshrc.d/*.zsh(N); do
  [ -f "$rc" ] && source "$rc"
done
unset rc

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
