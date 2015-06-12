testPluggableSubstitution

	| objectToSerialize aSerializer |
	
	objectToSerialize := Array with: 'hello' with: '' writeStream.
	
	(File forceNewFileNamed: 'demo.fuel') writeStreamDo: [ :aStream |
		aSerializer := FLSerializer newDefault.
		aSerializer analyzer when: [ :o | o isStream ] substituteBy: [ :o | nil ].
		aSerializer		 
			serialize: objectToSerialize
	 		on: aStream ].

	(File openFileNamed: 'demo.fuel') readStreamDo: [ :aStream |
		(FLMaterializer newDefault 
			materializeFrom: aStream) 
			root ].