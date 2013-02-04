icons
iconMaxSize

	^ iconMaxSize contents ifNil: [ 
		iconMaxSize contents: self retrieveIconMaxSize ]