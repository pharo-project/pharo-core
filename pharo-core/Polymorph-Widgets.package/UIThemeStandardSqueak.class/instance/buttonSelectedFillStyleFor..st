fill-styles-buttons
buttonSelectedFillStyleFor: aButton
	"Return the button selected fillStyle for the given color."
	
	^aButton onColor
		ifNil: [Color white darker darker]
		ifNotNil: [aButton onColor]