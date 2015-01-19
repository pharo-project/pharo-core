staticHeight: aNumberOrBlockOrSymbol

	self verticalPercent: 0.
	(aNumberOrBlockOrSymbol isBlock | aNumberOrBlockOrSymbol isSymbol)
		ifTrue: [ self minHeightBlock: aNumberOrBlockOrSymbol ]
		ifFalse: [ self minHeight: aNumberOrBlockOrSymbol ]