stackParameterClass
	^ self isPointer ifTrue: [ #integer ] ifFalse: [ self stackValueParameterClass ]