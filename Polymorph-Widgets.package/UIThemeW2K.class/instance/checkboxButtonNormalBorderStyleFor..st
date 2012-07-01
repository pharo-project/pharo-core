border-styles-buttons
checkboxButtonNormalBorderStyleFor: aCheckboxButton
	"Return the normal checkbox button borderStyle for the given button."

	| aStyle |
	aStyle := BorderStyle complexInset.
	aStyle width: 2.
	aStyle color: self backgroundColor.
	aStyle baseColor: self backgroundColor.
	^aStyle