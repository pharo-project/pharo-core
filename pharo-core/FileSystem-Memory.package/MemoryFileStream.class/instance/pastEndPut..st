private
pastEndPut: anObject
	| oldSize newSize |
	oldSize := collection size.
	newSize := oldSize + ((oldSize max: 20) min: 1000000).
	collection := store growFile: path to: newSize.
	writeLimit := collection size.
	collection at: (position := position + 1) put: anObject.
	^ anObject