reporting
reportWin32GFXDetails: aStream
	self header: 'Graphics Hardware Details' on: aStream.
	aStream nextPutAll: (SmalltalkImage current getSystemAttribute: 10003)