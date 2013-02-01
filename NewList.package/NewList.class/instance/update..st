updating
update: aSymbol

	aSymbol == #getItems 		ifTrue: [ ^ self updateItems ].
	aSymbol == #getListSize 		ifTrue: [ ^ self updateListSize ].
	aSymbol == #getHeaderTitle 	ifTrue: [ ^ self updateHeaderTitle ].