private
installTTCFont: aTTCFont foregroundColor: foregroundColor backgroundColor: backgroundColor

	super installTTCFont: aTTCFont foregroundColor: foregroundColor backgroundColor: backgroundColor.
	lastFont := aTTCFont.
	lastFontForegroundColor := foregroundColor.
	lastFontBackgroundColor := backgroundColor.
