testReset
	| testString filename  |
	testString := 'ιθΰτόφίδσρνα'.
	filename := 'test-file-' , 99 atRandom printString , '.txt'.
	MultiByteFileStream 
		forceNewFileNamed: filename
		do: [ :stream | 
			stream
				nextPutAll: testString;
				crlf ].
	[  
	filename asFileReference
		readStreamDo: [ :stream |
			self assert: (stream peekFor: $ι ).
			self assert: (stream peekFor: $θ ).
			stream reset.
			self assert: (stream peekFor: $ι ).
		] ]
	ensure: [ filename asFileReference ensureDelete ] 