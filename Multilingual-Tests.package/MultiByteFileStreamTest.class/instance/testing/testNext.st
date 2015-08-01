testNext
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
			self assert: (stream peek = $ι ).
			self assert: (stream next = $ι ).
			self assert: (stream next = $θ ).
		] ]
	ensure: [ filename asFileReference ensureDelete ] 