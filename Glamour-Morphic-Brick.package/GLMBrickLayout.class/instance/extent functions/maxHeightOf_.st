maxHeightOf: aBrick
	|blockValue|
	
	blockValue := aBrick layoutProperties maxHeightBlock cull: aBrick.
	
	^ (blockValue >= 0)
		ifTrue:[ blockValue ]
		ifFalse: [ SmallInteger maxVal ]