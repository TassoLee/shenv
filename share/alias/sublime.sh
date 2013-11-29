if [ -e "$HOME/Applications/Sublime Text.app" ]; then
  alias subl='"$HOME/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"'
elif [ -e "/Applications/Sublime Text.app" ]; then
  alias subl='"/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"'
fi

