pushLiteralVariable: object

	stream nextPutAll: 'pushLiteralVariable: '.
	object isVariableBinding ifTrue: [^ stream nextPutAll: object key].
	object printOn: stream.