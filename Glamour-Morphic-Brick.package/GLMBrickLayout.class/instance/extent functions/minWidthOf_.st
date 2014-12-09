minWidthOf: aBrick
	|blockValue|
	
	blockValue := aBrick layoutProperties minWidthBlock cull: aBrick.
	
	^ (blockValue >= 0)
		ifTrue:[ blockValue ]
		ifFalse: [ SmallInteger minVal ]