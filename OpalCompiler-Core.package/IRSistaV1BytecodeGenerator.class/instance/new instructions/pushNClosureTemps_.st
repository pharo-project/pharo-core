pushNClosureTemps: n
	n >= 64 ifTrue: [ self tooManyVars: 'temps' ].
	self nextPut: (Bytecodes at: #extendedPushNClosureTemporaryVariable).
	self nextPut: n.