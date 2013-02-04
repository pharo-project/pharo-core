updating
update: aSymbol

	aSymbol == self getItemsSelector 			ifTrue: [ ^ self changed: #getItems ].
	aSymbol == self getListSizeSelector 		ifTrue: [ ^ self changed: #getListSize ].
	aSymbol == self getHeaderTitleSelector 		ifTrue: [ ^ self changed: #getHeaderTitle ].
	aSymbol == self getIconSelector 			ifTrue: [ ^ self changed: #iconForItem:at: ].
	aSymbol == self getIndexSelector 			ifTrue: [ ^ self setIndexFromModel ].
	aSymbol == self getIndexesSelector 		ifTrue: [ ^ self setIndexesFromModel ].
	aSymbol == #resetSelectedIndexes 		ifTrue: [ ^ self changed: #resetSelectedIndexes ].
	aSymbol == #invalidateIcons 				ifTrue: [ ^ self changed: #invalidateIcons ]