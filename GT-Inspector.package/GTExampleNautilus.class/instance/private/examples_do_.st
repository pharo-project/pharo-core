examples: aCollection do: aSelector
	^ aCollection size = 1
		ifTrue: [ aCollection first perform: aSelector ]
		ifFalse: [ aCollection collect: aSelector ]