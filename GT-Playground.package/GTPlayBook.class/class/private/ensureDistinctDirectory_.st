ensureDistinctDirectory: aStringOrFileReference
	^ [ self basicEnsureDistinctDirectory: aStringOrFileReference ]
		on: Error
		do: [ nil ]