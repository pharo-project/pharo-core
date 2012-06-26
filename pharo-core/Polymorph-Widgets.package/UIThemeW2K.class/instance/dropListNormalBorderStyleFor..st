border-styles
dropListNormalBorderStyleFor: aDropList
	"Return the normal borderStyle for the given drop list"

	| aStyle |
	aStyle := BorderStyle complexInset.
	aStyle width: 2.
	aStyle color: self backgroundColor.
	aStyle baseColor: self backgroundColor.
	^aStyle