conversions
contrastingColor
	"Answer black or white depending on the luminance."

	self isTransparent ifTrue: [^Color black].
	^self luminance > 0.5
		ifTrue: [Color black]
		ifFalse: [Color white]