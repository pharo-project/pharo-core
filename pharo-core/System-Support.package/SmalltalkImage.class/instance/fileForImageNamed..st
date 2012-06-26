image, changes names
fileForImageNamed: aString
	^ (self imageDirectory resolve: aString), self imageSuffix