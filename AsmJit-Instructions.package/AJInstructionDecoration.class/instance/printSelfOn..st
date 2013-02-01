printing
printSelfOn: aStream  
	end 
		ifFalse: [ aStream nextPutAll: '/ "' ]
		ifTrue: [	aStream nextPutAll: '\ "end ' ].
	aStream  nextPutAll: annotation; nextPut: $".
	