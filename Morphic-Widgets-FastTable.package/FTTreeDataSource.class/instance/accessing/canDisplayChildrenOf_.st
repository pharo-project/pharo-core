canDisplayChildrenOf: item
	^ maxDepth ifNil: [ true ] ifNotNil: [ maxDepth > item depth ]