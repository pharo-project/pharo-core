hasPrimitiveFailed: result
	"A primitive that fails doesn't always return Context primitiveFailToken but returns Context primitiveFailTokenFor: errorCode.
	A possible errorCode is nil, which corresponds to Context primitiveFailToken.
	Here we loop over the errorCodes to know if the primitive has failed."
	
	|errorCodes|
	
	(self classOf: result) = Context primitiveFailToken class
		ifFalse: [  ^ false ].
		
	errorCodes := SmalltalkImage current specialObjectsArray at: 52.
	errorCodes do: [ :errorCode |
		result = (Context primitiveFailTokenFor: errorCode) ifTrue: [
			^true ] ].
	^false