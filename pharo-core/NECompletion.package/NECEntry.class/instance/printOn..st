printing
printOn: aStream 
	aStream nextPutAll: self class name;
		 nextPut: $(;
		 nextPutAll: contents;
		 nextPut: $,;
		 nextPutAll: type;
		 nextPut: $)