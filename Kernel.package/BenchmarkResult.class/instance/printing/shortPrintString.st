shortPrintString
	self isEmpty
		ifTrue: [ ^ self printString ].
	^ String streamContents: [ :out | 
		iterations = 1
			ifTrue: [ elapsedTime printHumanReadableOn: out ]
			ifFalse: [ self printFrequenceOn: out ] ]