copyInContext: aDictionary 
	^ self class 
		startPosition: nil
		contents: (self copyList: self contents inContext: aDictionary)
		stopPosition: nil
		isByteArray: isByteArray