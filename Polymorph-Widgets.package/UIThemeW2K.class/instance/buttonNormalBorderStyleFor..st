border-styles-buttons
buttonNormalBorderStyleFor: aButton
	"Return the normal button borderStyle for the given button."

	| aStyle |
	aButton isDefault ifTrue: [^self buttonNormalDefaultBorderStyle].
	aStyle := BorderStyle complexRaised.
	aStyle width: 2.
	aStyle color: self backgroundColor.
	^aStyle.