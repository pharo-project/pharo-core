*necompletion
guessTypeForName: aString
	| binding |
	bindings isNil ifFalse: [ 
		binding := bindings 
			at: aString
			ifAbsent: [ nil ].
		binding isNil
			ifFalse: [ ^ binding class ] ].
	^ super guessTypeForName: aString