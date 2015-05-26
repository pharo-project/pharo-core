generateInstructions: aFunctionBodyBlock
	| instructions |
	
	proxy prepareForCallout.
	"prepare & push arguments"	
	
	asm decorateWith: 'FFI: prepare arguments' during: [ fnSpec arguments do: [:arg | arg prepareArgumentUsing: self ] ].

	
	self foreignCall: [:call |
		"do not align, if its not required"
		self optNoAlignment ifTrue: [ call alignment: 1].

		self pushArguments.
	
		self emitFailureTest.

		asm decorateWith: 'FFI: performing a call' during: [
			aFunctionBodyBlock valueWithPossibleArgs: { self. proxy. asm}.
		
			"if we're using custom emitcall section, don't bother to cleanup the stack "
			(self optEmitCall or: [self optNoCleanup]) ifTrue: [ call disableCleanup ].
		].
	
	].
	
	"handle return value"
	asm decorateWith: 'FFI: coerce return value' during: [   
		fnSpec returnType coerceReturn: self ].
	
	self epilogue.
	self emitFailureHandler.

	(self optMayGC or: [proxy usedGate ]) ifTrue: [
		asm reserveExtraBytesOnStack: asm wordSize*2.
	].

	instructions := asm prepareInstructions.
	
	self optDebug ifTrue: [ self halt ].
	
	^ instructions
