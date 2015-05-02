closePath
	self isDirectoryPath
		ifFalse: [ self addPathSegment: #/ ]