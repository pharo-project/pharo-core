convertToSHSymbol: aSymbol
	^ (SHTextStylerST80 new attributesFor: aSymbol) notNil
		ifTrue: [ aSymbol ]
		ifFalse: [ #default ]