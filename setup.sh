#!/usr/bin/env bash
#
# This is the setup file for `shenv` (https://github.com/TassoLee/shenv)
#
set -e

if [ ! $(which git) ]; then
  echo "Git is not installed!"
  exit 1
fi

if [ -z "$SHENV_ROOT" ]; then
  SHENV_ROOT=$HOME/.shenv
fi

if [ -d "$SHENV_ROOT"/.git ]; then
  cd "$SHENV_ROOT"
  git pull origin master
  cd - >/dev/null
  exit 0
else
  SHENV_BAK="$SHENV_ROOT".bak@"$(date '+%Y-%m-%dT%H:%M:%S')"
  mkdir -p $SHENV_BAK
  [ -d "$SHENV_ROOT" ] && mv "$SHENV_ROOT" $SHENV_BAK
  [ -f $HOME/.bash_profile ] || [ -L $HOME/.bash_profile ] && mv $HOME/.bash_profile $SHENV_BAK
  [ -f $HOME/.bashrc ] || [ -L $HOME/.bashrc ] && mv $HOME/.bashrc $SHENV_BAK
fi
git clone https://github.com/TassoLee/shenv.git "$SHENV_ROOT"
ln -s "$SHENV_ROOT"/bash/bash_profile $HOME/.bash_profile
ln -s "$SHENV_ROOT"/bash/bashrc $HOME/.bashrc

