updating
update: aSymbol

	aSymbol == self getItemsSelector ifTrue: [ ^ self changed: #getItems ].
	aSymbol == self getListSizeSelector ifTrue: [ ^ self changed: #getListSize ].
	aSymbol == self getHeaderTitleSelector ifTrue: [ ^ self changed: #getHeaderTitle ].