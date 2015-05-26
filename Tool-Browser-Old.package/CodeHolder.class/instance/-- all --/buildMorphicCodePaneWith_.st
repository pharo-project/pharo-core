buildMorphicCodePaneWith: editString
	"Construct the pane that shows the code.
	Respect StandardFonts codeFont."

	| codePane |
	codePane := self buildTextMorph..
	editString
		ifNotNil: [codePane editString: editString.
			codePane hasUnacceptedEdits: true].
	^ codePane