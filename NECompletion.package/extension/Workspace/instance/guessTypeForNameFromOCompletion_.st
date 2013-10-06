guessTypeForNameFromOCompletion: aString
	"the difference is the ifAbsent: [nil] vs ifAbsent: [ ]"
	| binding |
	bindings ifNotNil: 
		[ binding := bindings 
			at: aString
			ifAbsent: [  ].
		binding ifNotNil: [ ^ binding class ] ].
	^ super guessTypeForName: aString