removeAndRenameLastTempIfErrorCode
	self primitiveErrorVariableName ifNotNil: [ :primitiveErrorVariableName |
		 body temporaries removeLast ].