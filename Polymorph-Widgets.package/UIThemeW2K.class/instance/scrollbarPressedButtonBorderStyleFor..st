border-styles-scrollbars
scrollbarPressedButtonBorderStyleFor: aScrollbar
	"Return the pressed button borderStyle for the given scrollbar."

	| aStyle |
	aStyle := BorderStyle complexInset.
	aStyle width: 2.
	aStyle color: self backgroundColor.
	^aStyle