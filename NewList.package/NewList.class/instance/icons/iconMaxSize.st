iconMaxSize

	^ iconMaxSize value ifNil: [ 
		iconMaxSize value: self retrieveIconMaxSize ]