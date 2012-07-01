accessing
noteSelectionIndex: anInteger for: aSymbol
	aSymbol == #fieldList
		ifTrue:
			[selectionIndex := anInteger]