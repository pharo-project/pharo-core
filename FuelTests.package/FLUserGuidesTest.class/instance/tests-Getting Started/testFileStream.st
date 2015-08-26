testFileStream

	| materializedString |
	(File named: 'demo.fuel') writeStreamDo: [:aStream |
		FLSerializer newDefault 
			serialize: 'stringToSerialize' 
	 		on: aStream ].

	(File named: 'demo.fuel') readStreamDo: [:aStream |
		materializedString := (FLMaterializer newDefault 
			materializeFrom: aStream ) root].