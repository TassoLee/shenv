bak() {
  for item in "$@"; do
    if [ -e "$item" ]; then
      mv "$item" "$item".bak
    fi
  done
}
