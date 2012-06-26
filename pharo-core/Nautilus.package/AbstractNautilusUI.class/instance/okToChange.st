source code area
okToChange

	sourceTextArea text asString trimBoth = sourceTextArea getText asString trimBoth ifTrue: [ ^ true ].
	sourceTextArea canDiscardEdits ifTrue: [^ true].
	sourceTextArea update: #wantToChange.  "Solicit cancel from view"
	^ sourceTextArea canDiscardEdits
