testPluggableSubstitution

	| objectToSerialize aSerializer |
	
	objectToSerialize := Array with: 'hello' with: '' writeStream.
	
	(File named: 'demo.fuel') writeStreamDo: [ :aStream |
		aSerializer := FLSerializer newDefault.
		aSerializer analyzer when: [ :o | o isStream ] substituteBy: [ :o | nil ].
		aSerializer		 
			serialize: objectToSerialize
	 		on: aStream ].

	(File named: 'demo.fuel') readStreamDo: [ :aStream |
		(FLMaterializer newDefault 
			materializeFrom: aStream) 
			root ].