class initialization
current

	^CurrentFactories 
		at: self species
		ifAbsentPut:[ self new ]
