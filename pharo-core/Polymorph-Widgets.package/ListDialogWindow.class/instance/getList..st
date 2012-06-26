as yet unclassified
getList: aSymbolOrBlock
	aSymbolOrBlock isBlock
		ifTrue: [ listBlock := aSymbolOrBlock. ^ self ].
	aSymbolOrBlock isSymbol 
		ifTrue: [ 
			listBlock := [ :regex| model perform: aSymbolOrBlock with: regex].
			^ self].
	Error signal: 'invalid argument'.