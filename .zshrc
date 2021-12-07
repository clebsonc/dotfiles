# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

PYENV_ROOT="$HOME/.pyenv"

PATH=$PYENV_ROOT/bin:$PATH
alias nv=nvim

eval "$(pyenv init -)"  # start autocompletions for zsh. This is the same of: `source $PYENV_ROOT/completions/pyenv.zsh`
eval "$(pyenv init --path)"  # set up the pyenv shims. Same as prepending the shims folder to path: `$PYENV_ROOT/shims:$PATH`
eval "$(pyenv virtualenv-init -)"  # Set up the pyenv virtualenv plugin.

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export VISUAL=vim
export EDITOR="$VISUAL"

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#
#
plugins=(
#     colored-man-pages
)
