printElementsOn: aStream
	aStream nextPut: $(.
	self keysSortedSafely do:
		[:key | aStream print: key; nextPutAll: '->'; print: (self at: key); space].
	aStream nextPut: $)