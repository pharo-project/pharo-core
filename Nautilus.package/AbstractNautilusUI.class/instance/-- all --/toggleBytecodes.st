toggleBytecodes
	self selectedMethod ifNil: [ ^ self ].
	sourceTextArea setText: (sourceTextArea text asString startsWithDigit 
		ifTrue: [ sourceTextArea getText ]
		ifFalse: [ self selectedMethod symbolic ])
	