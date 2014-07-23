removeAndRenameLastTempIfErrorCode
	self primitiveErrorVariableName ifNotNil: [ :primitiveErrorVariableName |
		" body temporaries last name: primitiveErrorVariableName."
		 body temporaries removeLast].