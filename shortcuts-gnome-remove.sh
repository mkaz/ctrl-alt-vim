#!/bin/bash
#

# Unset shortcut keys

echo "Removing  GNOME shortcuts..."
custom_kbd=org.gnome.settings-daemon.plugins.media-keys.custom-keybinding
kbd_path=/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/ctrl-alt-vim/
gsettings reset-recursively $custom_kbd:$kbd_path

