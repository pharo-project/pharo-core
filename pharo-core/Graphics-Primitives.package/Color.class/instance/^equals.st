equality
= aColor
	"Return true if the receiver equals the given color. This method handles TranslucentColors, too."

	aColor isColor ifFalse: [^ false].
	^ aColor privateRGB = rgb and:
		[aColor privateAlpha = self privateAlpha]
