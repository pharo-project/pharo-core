memory usage
sizeInMemory
    "Answer the number of bytes consumed by this instance including object header."
    | contentBytes |

	contentBytes := Smalltalk wordSize. "base header"
	contentBytes := contentBytes + (self class instSize * Smalltalk wordSize). "instance vars"

	self class isVariable ifTrue:[ | bytesPerElement | "indexed elements"
		bytesPerElement := self class isBytes ifTrue: [1] ifFalse: [4].
		contentBytes := contentBytes + (self basicSize * bytesPerElement)
	].

	contentBytes > 255 ifTrue:	[ contentBytes := contentBytes +  (2 * Smalltalk wordSize) ]
						ifFalse:	[ self class isCompact
									ifFalse: [ contentBytes := contentBytes + Smalltalk wordSize]
								].
	^contentBytes