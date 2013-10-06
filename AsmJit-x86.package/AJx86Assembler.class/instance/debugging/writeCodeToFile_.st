writeCodeToFile: aFileName
	aFileName asReference asReference delete writeStreamDo: [:s|
		s nextPutAll: self bytes
		]
