compiledMethodWith: trailer
	| lits header |
	lits := self literals.
	header := Smalltalk vm isSpur ifTrue: [ self spurVMHeader: lits size ] ifFalse: [ self v3VMHeader: lits size ].
	^ self compiledMethodWith: trailer header: header literals: lits