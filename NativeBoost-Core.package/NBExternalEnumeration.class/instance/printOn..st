printing
printOn: t1 
	super printOn: t1.

	t1 nextPut: $(;
		 nextPutAll: self item printString;
		 nextPut: $)