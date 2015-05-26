gtExamplePng
	<gtExample>
	^ FileSystem memory workingDirectory / 'pharoicon.png' 
		writeStreamDo: [ :stream |
			PNGReadWriter 
				putForm: ThemeIcons current pharoIcon 
				onStream: stream ];
		yourself