private
growTo: anInteger
	
	collection := store growFile: path to: anInteger.
	writeLimit := collection size