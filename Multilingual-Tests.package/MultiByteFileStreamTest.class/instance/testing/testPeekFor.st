testPeekFor
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
			self deny: (stream peekFor: $a). "If peekFor fails, it doesn't advance position"
			self assert: (stream peekFor: $ΰ)
		] ]
	ensure: [ filename asFileReference ensureDelete ] 