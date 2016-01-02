#!/usr/bin/env zsh

WS1='1: '
WS2='2: '
WS3='3: '
WS0='10: '

i3-msg "workspace $WS1; append_layout ~/.config/i3/layout-Chrome.json; \
	workspace $WS2; append_layout ~/.config/i3/layout-Terminal.json; \
	workspace $WS3; append_layout ~/.config/i3/layout-Skype.json"
#	workspace $WS0; append_layout ~/.config/i3/layout-Steam.json"

i3-msg "exec chromium; \
	exec termite; \
	exec skype"
#	exec steam"

