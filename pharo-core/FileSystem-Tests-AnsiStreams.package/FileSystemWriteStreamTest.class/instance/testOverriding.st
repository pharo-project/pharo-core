tests
testOverriding
	stream 
		nextPutAll: 'foo bar';
		close.
	self assert: (filesystem root resolve: 'giffle') 
		readStream contents asString = 'foo bar'.
	
	(filesystem root resolve: 'giffle') writeStreamDo: [ :s | s nextPutAll: 'x' ].
	self assert: (filesystem / 'giffle') 
		readStream contents asString = 'x'