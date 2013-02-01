emitting code
emitCleanup
	noCleanup ifTrue: [ ^ self ].
	
	asm insert: 
	(
			asm instructionsFor: [
			self needsAlignment 
				ifTrue: [ self alignedCleanup ]
				ifFalse: [ self normalCleanup ]  			
		]

	) after: callCleanup