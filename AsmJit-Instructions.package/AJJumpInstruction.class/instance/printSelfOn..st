printing
printSelfOn: aStream  
	aStream nextPutAll: name; space.
	label printSelfOn: aStream.
		
	machineCode ifNotNil: [
		aStream space; nextPut: $[ .
		machineCode do: [:byte | aStream nextPutAll: (byte printStringBase: 16)] separatedBy: [ aStream space ].
		aStream nextPut: $].	
	].

