testSignedLongLong
	self flag: #todo. "This is not yet supported"
	self skip. 
	self signed8ByteNumbers do: [ :int |
		|ref|
		ref := ByteArray new: FFIInt64 externalTypeSize.
		ref signedLongLongAt: 1 put: int.
		self assert: (ref signedLongLongAt: 1) = int ]