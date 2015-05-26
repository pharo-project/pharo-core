testPluggableSubstitution

	| materialized objectToSerialize aSerializer |
	
	objectToSerialize := Array with: 'hello' with: '' writeStream.
	
	FileStream forceNewFileNamed: 'demo.fuel' do: [ :aStream |
		aSerializer := FLSerializer newDefault.
		aSerializer analyzer when: [ :o | o isStream ] substituteBy: [ :o | nil ].
		aSerializer		 
			serialize: objectToSerialize
	 		on: aStream binary ].

	FileStream oldFileNamed: 'demo.fuel' do: [ :aStream |
		(FLMaterializer newDefault 
			materializeFrom: aStream binary) 
			root ].