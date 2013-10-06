buttonColorFor: aButton
	"Answer the colour for the given button."

	^self settings standardColorsOnly
		ifTrue: [self settings buttonColor]
		ifFalse: [aButton colorToUse]