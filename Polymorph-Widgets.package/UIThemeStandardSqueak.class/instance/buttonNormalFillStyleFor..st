fill-styles-buttons
buttonNormalFillStyleFor: aButton
	"Return the normal button fillStyle for the given button."
	
	^aButton offColor
		ifNil: [Color transparent]
		ifNotNil: [aButton offColor]