minHeightOf: aBrick
	|blockValue|
	
	blockValue := aBrick layoutProperties minHeightBlock cull: aBrick.
	
	^ (blockValue >= 0)
		ifTrue:[ blockValue ]
		ifFalse: [ SmallInteger minVal ]