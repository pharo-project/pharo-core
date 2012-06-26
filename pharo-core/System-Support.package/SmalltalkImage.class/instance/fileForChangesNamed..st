image, changes names
fileForChangesNamed: aName
	^ (self imageDirectory resolve: aName) , self changesSuffix.