gtExampleText
	<example>
	^ FileSystem memory workingDirectory / 'sample.txt' 
		writeStreamDo: [ :stream |
			stream nextPutAll: self comment ];
		yourself