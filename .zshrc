# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export PATH=/opt/homebrew/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH="/Users/predrag.njegovanovic/.local/bin:$PATH"

export ZSH=$HOME/.oh-my-zsh

#Theme and theme setup
POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git gitfast sudo docker docker-compose zsh-autosuggestions aliases aws battery branch gcloud iterm2 isodate kubectl macos poetry zsh-navigation-tools zsh-interactive-cd zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh


# Aliases

alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias cat="bat"
alias -g :B='-h 2>&1 | bat --language=help --style=plain'
alias ls="eza --icons=auto --group-directories-first --no-symlinks -x"

# Dev directory
alias code="cd $HOME/Code"

# fortune | cowsay

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
eval "$(pyenv virtualenv-init -)"
eval "$(zoxide init --cmd cd zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
eval "$(pyenv virtualenv-init -)"
