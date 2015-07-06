canRefreshValues
	self needsRefreshExposedRows ifFalse: [ ^ false ].
	self owner ifNil: [ ^ false ].
	self owner hasDataSource ifFalse: [ ^ false ].
		
	^ true