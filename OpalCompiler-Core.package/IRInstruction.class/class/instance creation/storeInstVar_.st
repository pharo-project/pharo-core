storeInstVar: index
	^ IRInstVarAccess new 
		index: index; 
		store: true; 
		yourself.
	