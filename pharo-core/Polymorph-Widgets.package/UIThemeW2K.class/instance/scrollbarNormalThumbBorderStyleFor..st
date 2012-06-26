border-styles-scrollbars
scrollbarNormalThumbBorderStyleFor: aScrollbar
	"Return the normal button borderStyle for the given scrollbar."
	
	| aStyle |
	aStyle := BorderStyle complexRaised.
	aStyle width: 2.
	aStyle color: self backgroundColor.
	^aStyle