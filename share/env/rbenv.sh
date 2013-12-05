RBENV_ROOT=${RBENV_ROOT:-$HOME/.rbenv}

if [ -d "$RBENV_ROOT"/bin ]; then
  export PATH="$RBENV_ROOT"/bin:$PATH
fi

if [ "$(which rbenv)" ]; then
  eval "$(rbenv init -)"
else
  echo "It seems you have not installed rbenv!"
fi

