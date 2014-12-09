maxWidthOf: aBrick
	|blockValue|
	
	blockValue := aBrick layoutProperties maxWidthBlock cull: aBrick.
	
	^ (blockValue >= 0)
		ifTrue:[ blockValue ]
		ifFalse: [ SmallInteger maxVal ]