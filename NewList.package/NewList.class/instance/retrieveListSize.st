communication with model
retrieveListSize
	
	^ self model getListSize ifNil:  [ listCache size ]