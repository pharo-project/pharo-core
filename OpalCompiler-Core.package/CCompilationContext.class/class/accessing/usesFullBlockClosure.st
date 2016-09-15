usesFullBlockClosure
	^ UsesFullBlockClosure ifNil: [ self initialize. UsesFullBlockClosure ]