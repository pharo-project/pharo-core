argument loaders
loaderFromMethodArgsNamed: argName
	methodArgs
		ifNotNil: [ 
			| index |
			index := methodArgs indexOf: argName ifAbsent: [ nil ].
			index
				ifNotNil: [ 
					"ok, this is a method argument"
					^ NBSTMethodArgument new stackIndex: methodArgs size - index ] ].
	^ nil