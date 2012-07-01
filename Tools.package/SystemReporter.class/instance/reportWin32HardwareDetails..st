reporting
reportWin32HardwareDetails: aStream
	self header: 'Hardware Details' on: aStream.
	aStream nextPutAll: (SmalltalkImage current getSystemAttribute: 10001)