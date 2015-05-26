import: anotherTextModel 

	| copy |
	copy := anotherTextModel veryDeepCopy.
	copy spansDo: [ :each | each text: self ].
	startSpan := copy startSpan.
	endSpan := startSpan last