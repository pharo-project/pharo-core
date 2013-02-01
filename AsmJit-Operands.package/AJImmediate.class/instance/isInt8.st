testing
isInt8
	^ size ifNil:  [ self fitsInSize: 1 ]
		ifNotNil: [ size = 1 ]