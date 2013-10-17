pushLiteral: object

	stream nextPutAll: 'pushLiteral: '.
	object isVariableBinding ifTrue: [^ stream nextPutAll: object key].
	object printOn: stream.
