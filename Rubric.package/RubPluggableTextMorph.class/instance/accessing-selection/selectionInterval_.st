selectionInterval: sel
	setSelectionSelector
		ifNil: [ super selectionInterval: sel ]
		ifNotNil: [ self model perform: setSelectionSelector with: sel ]