changeToList

	self instantiateModels: 
		#( bottom #ListModel ).
		
	bottom items: (1 to: 100) asOrderedCollection.