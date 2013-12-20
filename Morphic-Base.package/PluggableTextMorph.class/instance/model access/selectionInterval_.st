selectionInterval: sel

	setSelectionSelector
		ifNil: [ selectionInterval := sel ]
		ifNotNil: [ self model perform:setSelectionSelector with: sel ]