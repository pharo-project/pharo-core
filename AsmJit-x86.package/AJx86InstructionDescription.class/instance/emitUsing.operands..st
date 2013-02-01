emitting-dispatch
emitUsing: emitter operands: operands
	|args|
	
	(self is64BitOnly and: [ emitter is64BitMode not ]) ifTrue: [ 
		self error: 'instruction ', self name asUppercase,' is only for 64 bit mode' ].

	(self is32BitOnly and: [ emitter is32BitMode not ]) ifTrue: [ 
		self error: 'instruction ', self name asUppercase,' is only for 32 bit mode' ].
	
	"manually create the arguments array"
	args := Array new: 4.
	args at: 1 put: emitter.
	args replaceFrom: 2
		to: (operands size + 1 min: 4)
		with: operands
		startingAt: 1.
		
	^ self 
		perform: groupEmitSelector 
		withArguments: args