explorerFor: anObject
	^UIManager default 
		explorer: self 
		withLabel: (anObject printStringLimitedTo: 32)