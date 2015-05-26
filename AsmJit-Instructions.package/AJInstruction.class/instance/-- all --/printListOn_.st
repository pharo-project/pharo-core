printListOn: aStream
	
	self printIndentOn: aStream.
	self printSelfOn: aStream.
	
	next ifNotNil: [
		aStream cr.
		next printListOn: aStream 
		]