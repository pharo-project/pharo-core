displaySubObjectAt: index
	| size |
	
	size := self class allInstVarNames size.
	^ index <= size
		ifTrue: [ self class allInstVarNames at: index ]
		ifFalse: [ ( index - size ) asString ]