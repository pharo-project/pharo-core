printing
printOn: aStream

	self printAnnotationOn: aStream.

	aStream nextPutAll: 'mem['.

	base ifNotNil: [	
		aStream nextPutAll: base printAsMemBase.
		(index isNil and: [ displacement isNil ])
			ifFalse: [ aStream nextPutAll: ' + ' ]].
		
	index ifNotNil: [
		aStream nextPutAll: index registerName	.
		displacement ifNotNil: [ aStream nextPutAll: ' + ']].
	
	displacement ifNotNil: [
		aStream print: displacement ].
	  
	aStream nextPut: $].