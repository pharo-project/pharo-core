gtDisplaySummaryOn: aStream
	self unexpectedError 
		ifNotNil: [ self unexpectedError printOn: aStream ]
		ifNil: [ self returnValue printOn: aStream ].
