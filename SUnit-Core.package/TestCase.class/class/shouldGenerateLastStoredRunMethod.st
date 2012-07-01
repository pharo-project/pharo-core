history
shouldGenerateLastStoredRunMethod
	| sameRun |
	
	(self class methodDictionary includesKey: #lastStoredRun)
		ifFalse: [^ true].
	sameRun := #(#passed #failures #errors) inject: true into: 
		[ :ok :set | ok and: [(self lastRun at: set) = (self lastStoredRun at: set) ]].
	^ sameRun not
