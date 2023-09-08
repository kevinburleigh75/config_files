alias ss='source ~/.zshrc'

setopt PROMPT_SUBST
PS1='$(/Users/burleigh/bin/prompt.pl)'

umask 0022

## pyenv config
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PYENV_VIRTUALENV_DISABLE_PROMPT=1
eval "$(pyenv virtualenv-init -)"

## from brew install postgresql@13 command output
export PATH="/opt/homebrew/opt/postgresql@13/bin:$PATH"

## from brew install llvm@15
export PATH="/opt/homebrew/opt/llvm@15/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm@15/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm@15/include"

