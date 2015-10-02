gtExampleGif
	<gtExample>
	^ FileSystem memory workingDirectory / 'pharoicon.gif' 
		writeStreamDo: [ :stream |
			GIFReadWriter 
				putForm: Smalltalk ui icons pharoIcon
				onStream: stream ];
		yourself