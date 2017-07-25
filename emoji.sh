#!/bin/env sh
function emoji_selector {
	# The selector UI doesn't report canceling with error codes only
	# stdout. This fixes it.
	/usr/libexec/ibus-ui-emojier | grep -v Cancel && true
}

function send_text() {
	window=$1
	shift 1
	xdotool type --clearmodifiers --window $window $@
}

wnd=$(xdotool getwindowfocus)
(emoji_selector && send_text $wnd $(xsel -b -o)) &
# By default new non-dialog windows don't get focus. This is good for regular
# windows but not for this dialog
while [ 1 ]; do
	wmctrl -a "Emoji Choice" && break;
done;
