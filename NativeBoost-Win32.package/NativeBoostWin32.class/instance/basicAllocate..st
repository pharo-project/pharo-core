as yet unclassified
basicAllocate: numBytes
	"answer an instance of NBExternalAddress, or nil if failed"
	| address |
	address := NBExternalAddress new.
	self bootstrapAllocate: numBytes into: address.
	(address asUnsignedLong) = 0 ifTrue: [ ^ nil ].
	^ address