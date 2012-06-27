protocol
getList: aSymbolOrBlockWithOneArgument
	aSymbolOrBlockWithOneArgument isBlock
		ifTrue: [ listBlock := aSymbolOrBlockWithOneArgument. ^ self ].
	aSymbolOrBlockWithOneArgument isSymbol 
		ifTrue: [ 
			listBlock := [ :regex| model perform: aSymbolOrBlockWithOneArgument with: regex].
			^ self].
	Error signal: 'invalid argument'.