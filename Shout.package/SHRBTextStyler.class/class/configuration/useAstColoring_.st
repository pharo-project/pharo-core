useAstColoring: bool
	^ PluggableTextMorph stylingClass: (bool ifTrue: [SHRBTextStyler] ifFalse:[SHTextStylerST80])