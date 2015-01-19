height: aNumberOrBlockOrSymbol

	(aNumberOrBlockOrSymbol isBlock | aNumberOrBlockOrSymbol isSymbol)
		ifTrue: [ self heightBlock: aNumberOrBlockOrSymbol ]
		ifFalse: [ super height: aNumberOrBlockOrSymbol ]
	
	