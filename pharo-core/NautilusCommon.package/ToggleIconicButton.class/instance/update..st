updating
update: aSymbol

	aSymbol = self statusSelector
		ifTrue: [ self updateStatus ].
	super update: aSymbol