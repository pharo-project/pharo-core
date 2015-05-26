allocate: aSize
	"Allocate a memory block with given size in bytes,
	answer an NBExternalAddress instance - address to the beginning of memory block"
	
	" DO NOT OVERRIDE. Override #basicAllocate: instead"
	| addr |
	addr := self basicAllocate: aSize.
	addr ifNil: [ self allocationFailed ].
	^ addr