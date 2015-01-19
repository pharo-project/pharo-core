staticWidth: aNumberOrBlockOrSymbol

	self horizontalPercent: 0.
	(aNumberOrBlockOrSymbol isBlock | aNumberOrBlockOrSymbol isSymbol)
		ifTrue: [ self minWidthBlock: aNumberOrBlockOrSymbol ]
		ifFalse: [ self minWidth: aNumberOrBlockOrSymbol ]