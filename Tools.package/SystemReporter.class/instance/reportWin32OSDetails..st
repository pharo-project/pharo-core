reporting
reportWin32OSDetails: aStream
	self header: 'Operating System Details' on: aStream.
	aStream nextPutAll: (SmalltalkImage current getSystemAttribute: 10002)