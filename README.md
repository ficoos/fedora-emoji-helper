# ibus emoji qol fixes

To type emojis on GNOME you need to run `ibus emoji`.
This is annoying as the window will start in a not-focused status and
selecting an emoji will not type it immidiately to the selected text box.

This tries to fix those issues.
Currently only works on x11 and auto typing sometime doesn't work.
Patches welcome

# set up
1. dnf install xdotool wmctrl
2. go to settings -> keyboard -> +
3. add a shortcuts for `ctrl + shift + e` that runs `emoji.sh`
