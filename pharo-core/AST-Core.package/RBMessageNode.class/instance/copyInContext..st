matching
copyInContext: aDictionary 
	^ self class new
		receiver: (self receiver copyInContext: aDictionary);
		selectorParts: (self selectorParts collect: [ :each | each copy removePositions ]);
		arguments: (self arguments collect: [ :each | each copyInContext: aDictionary ]);
		yourself