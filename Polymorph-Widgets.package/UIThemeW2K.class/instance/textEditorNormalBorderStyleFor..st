border-styles
textEditorNormalBorderStyleFor: aTextEditor
	"Return the normal text editor borderStyle for the given text editor."

	| aStyle |
	aStyle := BorderStyle complexInset.
	aStyle width: 2.
	aStyle color: self backgroundColor.
	aStyle baseColor: self backgroundColor.
	^aStyle