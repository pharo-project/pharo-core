storeIntoLiteralVariable: object

	stream nextPutAll: 'storeLiteralVariable: '.
	object isVariableBinding ifTrue: [^ stream nextPutAll: object key].
	object printOn: stream.