generalPurposeWithIndex: index size: numBytes requiresRex: requiresRex prohibitsRex: prohibitsRex
	"Access a register by its properties.
	Example:
		RBP == (self generalPurposeWithIndex: RBP index size: RBP size requiresRex: RBP requiresRex prohibitsRex: RBP prohibitsRex )"

	| type code |
	type := numBytes = 1
		ifTrue: [ 0 ]
		ifFalse: [ 
			numBytes = 2
				ifTrue: [ 16r10 ]
				ifFalse: [ 
					numBytes = 4
						ifTrue: [ 16r20 ]
						ifFalse: [ 
							numBytes = 8
								ifTrue: [ 16r30 ]
								ifFalse: [ self error: 'Size must be 1, 2, 4, or 8 bytes' ] ] ] ].
	code := type + index.
	requiresRex
		ifTrue: [ code := code + RegRequiresRexMask ].
	prohibitsRex
		ifTrue: [ code := code + RegProhibitsRexMask ].
	^ self classPool at: (Codes at: code)