testFileStream

	| materializedString |
	FileStream forceNewFileNamed: 'demo.fuel' do: [:aStream |
		FLSerializer newDefault 
			serialize: 'stringToSerialize' 
	 		on: aStream binary].

	FileStream oldFileNamed: 'demo.fuel' do: [:aStream |
		materializedString := (FLMaterializer newDefault 
			materializeFrom: aStream binary) root].