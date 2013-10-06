description

	^ NBErrorDescriptions at: errorCode ifAbsent: [
		'Error during execution of native code: ' , errorCode asString].
	
