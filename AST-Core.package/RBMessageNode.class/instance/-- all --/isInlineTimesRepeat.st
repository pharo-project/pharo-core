isInlineTimesRepeat

	| block |
	self methodNode compilationContext optionInlineTimesRepeat ifFalse: [ ^false ]. 

	self receiver isBlock ifTrue: [^ false].
	self isCascaded ifTrue: [^ false].
	#timesRepeat: = self selector ifFalse: [^ false].
	block := self arguments last.
	block isBlock ifFalse: [^ false].
	block arguments size isZero ifFalse: [^ false].
	^ true