storeTemp: aString

   	self addPending: (Message selector: #storeTemp: argument: (self currentScope indexForVarNamed: aString) )