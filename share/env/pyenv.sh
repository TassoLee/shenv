PYENV_ROOT=${PYENV_ROOT:-$HOME/.pyenv}

if [ -d "$PYENV_ROOT"/bin ]; then
  export PATH="$PYENV_ROOT"/bin:$PATH
fi

if [ "$(which pyenv)" ]; then
  eval "$(pyenv init -)"
else
  echo "It seems you have not installed pyenv!"
fi

