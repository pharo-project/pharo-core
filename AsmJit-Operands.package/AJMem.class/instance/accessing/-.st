- aDisplacement

	aDisplacement isInteger 
		ifFalse: [ self error: 'Expected integer for memory displacement but got ', aDisplacement class name, '.' ].
	self displacement: (AJImmediate new ivalue: aDisplacement negated).
	^ self