interpretNextInstructionUsing: aScanner 
	found := false.
	aScanner interpretNextInstructionFor: self.
	^found
