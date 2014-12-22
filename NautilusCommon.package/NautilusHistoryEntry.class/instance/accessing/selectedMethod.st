selectedMethod
	selectedSelector ifNil: [ ^ nil ].
	^ selectedClass ifNil: [ nil ] ifNotNil: [ selectedClass >> selectedSelector ]