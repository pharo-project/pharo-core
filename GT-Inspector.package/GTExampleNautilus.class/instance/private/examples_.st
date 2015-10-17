examples: aCollection
	^ aCollection size = 1
		ifTrue: [ aCollection first ]
		ifFalse: [ aCollection ]