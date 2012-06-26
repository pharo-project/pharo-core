private
addAtStartup: aCollection inDirectory: aDirectory named: fileName

	aDirectory assureExistence.
	aDirectory forceNewFileNamed: fileName do: [:stream | stream nextPutAll: (self buildStreamFor: aCollection) ].
