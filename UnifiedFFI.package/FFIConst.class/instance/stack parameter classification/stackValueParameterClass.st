stackValueParameterClass
	^ value isFloat ifTrue: [#float] ifFalse: [#integer]
