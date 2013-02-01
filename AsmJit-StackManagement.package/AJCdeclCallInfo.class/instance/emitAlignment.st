emitting code
emitAlignment
	| instructions |
	
	instructions := asm
		instructionsFor: [ 
			asm
				decorateWith: 'align stack'
				during: [ 
					savedSP := asm reserveTemp annotation: 'saved SP'.
					asm mov: asm ESP to: savedSP.
					stackSize > 0
						ifTrue: [ asm sub: asm ESP with: (stackSize asUImm annotation: 'stack size') ].
					asm
						and: asm ESP with: stackAlignment - 1;
						neg: asm ESP;
						add: asm ESP with: savedSP ] ].
	
	asm insert: instructions after: alignInsertionPoint.
	self emitCleanup