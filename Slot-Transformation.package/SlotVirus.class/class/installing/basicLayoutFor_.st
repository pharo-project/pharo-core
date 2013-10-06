basicLayoutFor: aClass

	aClass typeOfClass = #compiledMethod
		ifTrue: [ ^ aClass superclass layout extendCompiledMethod ].

	aClass isBits
		ifTrue: [
			aClass isBytes 
				ifTrue: [ ^ aClass superclass layout extendByte ]
				ifFalse: [ ^ aClass superclass layout extendWord ] ].
	
	aClass isWeak 
		ifTrue: [ ^ self basicWeakLayoutFor: aClass  ].
	
	aClass isVariable 
		ifTrue: [ ^ self basicVariableLayoutFor: aClass ].
	
	^ aClass superclass layout extend: (self layoutScopeFor: aClass).