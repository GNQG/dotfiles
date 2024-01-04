export LANG="ja_JP.UTF-8"
export XMODIFIERS="@im=fcitx"
export XMODIFIER="@im=fcitx"
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export DefaultIMModule=fcitx
# setxkbmap -option "ctrl:swapcaps" -option "caps:ctrl_modifier"
#setxkbmap -print | xkbcomp -w 0 -xkb - - \
#  | sed 's/key\s*<LCTL>\s*[{]\s*\[\s*Control_L\s*\]/key <LCTL> { [ Eisu_toggle, Caps_Lock ]/g' \
#  | sed 's/key\s*<CAPS>\s*[{]\s*\[\s*Eisu_toggle,\s*Caps_Lock\s*\]/key <CAPS> { [ Control_L ]/g' \
#  | sed 's/modifier_map Control [{] <LCTL> [}]/modifier_map Lock { <LCTL> }/g' \
#  | sed 's/modifier_map Lock [{] <CAPS> [}]/modifier_map Control { <CAPS> }/g' \
#  | xkbcomp -w 0 - $DISPLAY
