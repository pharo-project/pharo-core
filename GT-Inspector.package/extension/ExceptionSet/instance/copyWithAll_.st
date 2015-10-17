copyWithAll: aCollection
	^ self class new 
		instVarNamed: #exceptions put: (exceptions copy
			addAll: aCollection;
			yourself);
		yourself