closureFrom: fromSeqId to: toSeqId copyNumCopiedValues: numCopied numArgs: numArgs2
	
	"Closures allows at maximum 2 extensions, 1 extA and 1 extB. It could be changed later."
	
	| distance from to numExts |
	
	(numCopied < 0 or: [numCopied > 127]) ifTrue:
		[ self tooManyVars: 'copied vars'].
	numArgs > 127 ifTrue: [ self tooManyVars: 'args' ].

	from := seqOrder at: fromSeqId.
	to := seqOrder at: toSeqId ifAbsent: [^ self].  "not done yet"
	distance := (from + 1 to: to -1 ) inject: 0 into: [:size :i | 
				size + (seqBytes at: (orderSeq at: i)) size].
	distance > 65535 ifTrue: [self jumpTooBig: 'forward jump'].
	
	numExts := 0.
	(numCopied > 7 or: [ numArgs > 7 ]) ifTrue: [ numExts := numExts + 1 ].
	distance > 255 ifTrue: [ numExts := numExts + 1 ].
	
	self pushExtA: numCopied // 8 * 16 + (numArgs // 8).
	self pushExtB: distance // 255.
	self
		nextPut: (Bytecodes at: #doubleExtendedPushClosureCopyNumCopiedValuesNuumArgsJumpSize);
		nextPut: numExts * 64 + (numCopied \\ 8 * 8) + (numArgs \\ 8);
		nextPut: distance \\ 255.
	