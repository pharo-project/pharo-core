hasPrimitiveFailed: result
	"A primitive that fails doesn't always return ContextPart primitiveFailToken but returns ContextPart primitiveFailTokenFor: errorCode.
	A possible errorCode is nil, which corresponds to ContextPart primitiveFailToken.
	Here we loop over the errorCodes to know if the primitive has failed."
	
	|errorCodes|
	
	(self classOf: result) = ContextPart primitiveFailToken class
		ifFalse: [  ^ false ].
		
	errorCodes := SmalltalkImage current specialObjectsArray at: 52.
	errorCodes do: [ :errorCode |
		result = (ContextPart primitiveFailTokenFor: errorCode) ifTrue: [
			^true ] ].
	^false