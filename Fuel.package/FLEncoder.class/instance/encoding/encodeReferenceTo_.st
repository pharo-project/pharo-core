encodeReferenceTo: anObject

	indexStream 
		nextIndexPut: (objectsIndexes at: anObject ifAbsent: [FLObjectNotFound signalWith: anObject])