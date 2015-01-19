width: aNumberOrBlockOrSymbol

	(aNumberOrBlockOrSymbol isBlock | aNumberOrBlockOrSymbol isSymbol)
		ifTrue: [ self widthBlock: aNumberOrBlockOrSymbol ]
		ifFalse: [ super width: aNumberOrBlockOrSymbol ]