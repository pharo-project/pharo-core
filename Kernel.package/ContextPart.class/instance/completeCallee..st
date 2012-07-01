system simulation
completeCallee: aContext
	"Simulate the execution of bytecodes until a return to the receiver."
	| ctxt current ctxt1 |
	ctxt := aContext.
	[ctxt == current or: [ctxt hasSender: self]]
		whileTrue: 
			[current := ctxt.
			ctxt1 := ctxt quickStep.
			ctxt1 ifNil: [self halt].
			ctxt := ctxt1].
	^self stepToSendOrReturn