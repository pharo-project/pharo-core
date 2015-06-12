testFileStream

	| materializedString |
	(File forceNewFileNamed: 'demo.fuel') writeStreamDo: [:aStream |
		FLSerializer newDefault 
			serialize: 'stringToSerialize' 
	 		on: aStream ].

	(File openFileNamed: 'demo.fuel') readStreamDo: [:aStream |
		materializedString := (FLMaterializer newDefault 
			materializeFrom: aStream ) root].