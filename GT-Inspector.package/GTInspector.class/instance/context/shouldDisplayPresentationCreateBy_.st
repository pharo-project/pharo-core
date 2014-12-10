shouldDisplayPresentationCreateBy: aMethod
	
	^ self presentationFilter 
		ifNil: [ true]
		ifNotNil: [ self presentationFilter shouldDisplayPresentationCreateBy: aMethod ]