basicAllocate: numBytes
	"Allocate a memory block with given size in bytes,
	answer an NBExternalAddress instance - address to the beginning of memory block"
	| addr |
	addr := heap allocate: numBytes.
	addr = 0 ifTrue: [ ^ nil ].
	
	^ NBExternalAddress value: addr