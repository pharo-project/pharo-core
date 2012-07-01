searching
packageOfMethod: aMethodReference ifNone: errorBlock
	^ self packages detect: [:ea | ea includesMethodReference: aMethodReference] ifNone: errorBlock