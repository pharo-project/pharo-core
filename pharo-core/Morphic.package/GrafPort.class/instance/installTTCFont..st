private
installTTCFont: aTTCFont

	^ self installTTCFont: aTTCFont foregroundColor: (lastFontForegroundColor ifNil: [Color black]) backgroundColor: (lastFontBackgroundColor ifNil: [Color transparent]).
