border-styles-buttons
buttonNormalBorderStyleFor: aButton
	"Return the normal button borderStyle for the given button."

	^aButton borderStyle isComposite
		ifTrue: [aButton borderStyle borders first]
		ifFalse: [aButton borderStyle]