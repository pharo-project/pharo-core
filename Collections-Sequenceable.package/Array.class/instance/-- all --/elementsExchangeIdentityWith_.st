elementsExchangeIdentityWith: otherArray
	"This primitive performs a bulk mutation, causing all pointers to the elements of this array to be replaced by pointers to the corresponding elements of otherArray.  At the same time, all pointers to the elements of otherArray are replaced by pointers to the corresponding elements of this array.  The identityHashes remain with the pointers rather than with the objects so that objects in hashed structures should still be properly indexed after the mutation."

	<primitive: 128>
	otherArray class == Array ifFalse: [^ self error: 'arg must be array'].
	self size = otherArray size ifFalse: [^ self error: 'arrays must be same size'].
	(self anySatisfy: [:obj | obj class == SmallInteger]) ifTrue: [^ self error: 'can''t become SmallIntegers'].
	(otherArray anySatisfy: [:obj | obj class == SmallInteger]) ifTrue: [^ self error: 'can''t become SmallIntegers'].
	self with: otherArray do:[:a :b| a == b ifTrue:[^self error:'can''t become yourself']].

	"Must have failed because not enough space in forwarding table (see ObjectMemory-prepareForwardingTableForBecoming:with:twoWay:).  Do GC and try again only once"
	(Smalltalk bytesLeft: true) = Smalltalk primitiveGarbageCollect
		ifTrue: [^ self primitiveFailed].
	^ self elementsExchangeIdentityWith: otherArray