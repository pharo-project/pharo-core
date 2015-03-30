gtExampleGif
	<gtExample>
	^ FileSystem memory workingDirectory / 'pharoicon.gif' 
		writeStreamDo: [ :stream |
			GIFReadWriter 
				putForm: ThemeIcons current pharoIcon 
				onStream: stream ];
		yourself