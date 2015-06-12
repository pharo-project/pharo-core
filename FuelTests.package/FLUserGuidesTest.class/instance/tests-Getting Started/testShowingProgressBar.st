testShowingProgressBar

	(Smalltalk globals includesKey: #FLProgressSerialization) ifFalse: [
		" Needs:
		(ConfigurationOfFuel project latestVersion) load: 'FuelProgressUpdate'.
		"
		^self ].
	
	(File forceNewFileNamed: 'numbers.fuel') writeStreamDo: [:aStream |
		FLSerializer newDefault 
			showProgress;
			serialize: (1 to: 200000) asArray 
			on: aStream ].
	
	(File openFileNamed: 'numbers.fuel') readStreamDo: [:aStream | 
		FLMaterializer newDefault 
			showProgress;
			materializeFrom: aStream ].