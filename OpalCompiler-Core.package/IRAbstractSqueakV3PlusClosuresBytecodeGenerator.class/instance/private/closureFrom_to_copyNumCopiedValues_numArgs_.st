closureFrom: fromSeqId to: toSeqId copyNumCopiedValues: numCopied numArgs: numArgs2
	
	| distance from to |
	
	(numCopied < 0 or: [numCopied > 15]) ifTrue:
		[^self tooManyVars: 'copied vars'].
	numArgs > 15 ifTrue: [ self tooManyVars: 'args' ].

	from := seqOrder at: fromSeqId.
	to := seqOrder at: toSeqId ifAbsent: [^ self].  "not done yet"
	distance := (from + 1 to: to -1 ) inject: 0 into: [:size :i | 
				size + (seqBytes at: (orderSeq at: i)) size].
	distance > 65535 ifTrue: [self jumpTooBig: 'forward jump'].
	
	self
		nextPut: (Bytecodes at: #PushClosureCopyNumCopiedValuesNuumArgsJumpSize);
		nextPut: numArgs2 + (numCopied bitShift: 4);
		nextPut:  (distance bitShift: -8);
		nextPut: (distance bitAnd: 16rFF).
	