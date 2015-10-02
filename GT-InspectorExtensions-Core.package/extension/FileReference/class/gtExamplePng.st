gtExamplePng
	<gtExample>
	^ FileSystem memory workingDirectory / 'pharoicon.png' 
		writeStreamDo: [ :stream |
			PNGReadWriter 
				putForm: Smalltalk ui icons pharoIcon 
				onStream: stream ];
		yourself