reporting
reportOS: aStream
	self header: 'Operating System/Hardware' on: aStream.
	aStream
		nextPutAll: Smalltalk os platformName; space;
		nextPutAll: Smalltalk os osVersion; space;
		nextPutAll: Smalltalk os platformSubtype; cr
