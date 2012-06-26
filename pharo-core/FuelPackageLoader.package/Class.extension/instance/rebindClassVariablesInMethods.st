*FuelPackageLoader
rebindClassVariablesInMethods

	self class methodDict valuesDo: [ :aCompiledMethod | 
		1 to: aCompiledMethod numLiterals-1 do: [ :index | 
			| literal |
			literal := aCompiledMethod literalAt: index.
			literal isVariableBinding ifTrue: [
				(self innerBindingOf: literal key) ifNotNil: [:aBinding |
					aCompiledMethod literalAt: index put: aBinding
				]
			]
		]
	]