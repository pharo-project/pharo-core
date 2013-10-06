executeOn: interpreter
	^cons 
		ifFalse: [interpreter pushNewArray: size]
		ifTrue: [interpreter pushConsArray: size]