dict() {
  curl -s "http://dict.cn/$1" | sed -n "s/.*<strong>\(.*\)<\/strong>.*/\1/gp"
}

