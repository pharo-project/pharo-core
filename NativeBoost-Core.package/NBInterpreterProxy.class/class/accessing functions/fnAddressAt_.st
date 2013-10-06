fnAddressAt: index
	"retrieve an interpreter proxy function address
	at given zero-based index.
	
	(self functions at: #minorVersion) address
	"
	index isString ifTrue: [ ^ self fnAddressAt: (self functions at: index) index ].
	^ NativeBoost ulongAt: self interpreterProxyAddress + (4 * index)
	