fill-styles-buttons
buttonDisabledFillStyleFor: aButton
	"Return the disabled button fillStyle for the given color."

	^aButton offColor
		ifNil: [Color darkGray]
		ifNotNil: [aButton offColor muchDarker]