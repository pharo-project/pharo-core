selecting
update: aSymbol

	aSymbol = #okUnabled ifTrue: [ self changed: #okUnabled ].
	super update: aSymbol