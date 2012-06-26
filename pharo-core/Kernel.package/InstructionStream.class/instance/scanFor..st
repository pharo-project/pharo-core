scanning
scanFor: scanBlock
	"Answer the index of the first bytecode for which scanBlock
	 answers true when supplied with that bytecode."

	| method end byte |
	method := self method.
	end := method endPC.
	[pc <= end] whileTrue: 
		[(scanBlock value: (byte := method at: pc)) ifTrue:
			[^true].
		 pc := self nextPc: byte].
	^false