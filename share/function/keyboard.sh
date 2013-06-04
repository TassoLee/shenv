apple_internal_keyboard() {
  local _APPLE_USB_KEYBOARD_KEXT="/System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext"

  if [ "$1" = "off" ]; then
    sudo kextunload $_APPLE_USB_KEYBOARD_KEXT
  fi

  if [ "$1" = "on" ]; then
    sudo kextload $_APPLE_USB_KEYBOARD_KEXT
  fi
}

