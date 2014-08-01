pragmasForMethod: primitive
	(primitive > 0 and: [ method pragmas isEmpty ])
		ifTrue: [ 
			"Case where additionnal method state is disabled for space efficiency, the method is a primitive but has no pragmas."
			primitive = 117 ifFalse: [ 
				^ RBPragmaNode 
					selectorParts: #(primitive:) 
					arguments: {RBLiteralNode value: primitive} ].
			self shouldBeImplemented. "should fetch in the literal array the module / error and recreate the named primitive." ].
		
	^ method pragmas collect: [ :each |
		| selectorParts |
		selectorParts := ((each keyword separateKeywords splitOn: '  ') collect: [ :e | e asSymbol ]) asArray.
		RBPragmaNode 
			selectorParts: selectorParts
			arguments: (each arguments collect: [ :arg | RBLiteralNode value: arg ]) ]