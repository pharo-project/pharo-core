friend
installOn: aDisplayContext foregroundColor: fgColor backgroundColor: bgColor
	self foregroundColor: fgColor. "install color"
	aDisplayContext installTTCFont: self foregroundColor: foregroundColor backgroundColor: bgColor
