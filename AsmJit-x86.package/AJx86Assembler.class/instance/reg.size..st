accessing
reg: index size: nBytes

	nBytes = 1 ifTrue: [ ^ self reg8: index ].
	nBytes = 2 ifTrue: [ ^ self reg16: index ].
	nBytes = 4 ifTrue: [ ^ self reg32: index ].
	nBytes = 8 ifTrue: [ ^ self reg64: index ].

	self error: 'invalid register size'.