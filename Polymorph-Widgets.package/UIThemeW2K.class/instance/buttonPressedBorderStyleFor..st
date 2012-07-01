border-styles-buttons
buttonPressedBorderStyleFor: aButton
	"Return the normal button borderStyle for the given button."

	| aStyle |
	aStyle := BorderStyle complexInset.
	aStyle width: 2.
	aStyle color: self backgroundColor.
	^aStyle.