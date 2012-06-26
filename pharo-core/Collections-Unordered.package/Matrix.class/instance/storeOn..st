printing
storeOn: aStream
	aStream nextPut: $(; nextPutAll: self class name;
		nextPutAll: ' rows: '; store: nrows;
		nextPutAll: ' columns: '; store: ncols;
		nextPutAll: ' contents: '; store: contents;
		nextPut: $)