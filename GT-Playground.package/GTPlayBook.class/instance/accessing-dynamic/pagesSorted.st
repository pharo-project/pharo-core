pagesSorted
	^ self pages sorted: [ :a :b | 
		a modificationTime > b modificationTime ]