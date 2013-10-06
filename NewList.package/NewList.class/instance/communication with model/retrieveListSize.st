retrieveListSize
	
	^ self model getListSize ifNil:  [ listCache size ]