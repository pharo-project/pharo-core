gtDisplaySummaryOn: aStream
	self unexpectedError 
		ifNotNil: [ self unexpectedError gtDisplayOn: aStream ]
		ifNil: [ self returnValue gtDisplayOn: aStream ].
