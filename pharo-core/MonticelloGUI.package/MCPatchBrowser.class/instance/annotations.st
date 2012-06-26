accessing
annotations
	^selection ifNil: [ super annotations ]
		ifNotNil: [ selection annotations ]