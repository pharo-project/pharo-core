pragmasForMethod: primitive
	"self flag: 'sometimes the image could not have additional method state ?'
	(primitive > 0 and: [ method pragmas isEmpty ])
		ifTrue: [ primitive = 117 ifFalse: [ 
				^ RBPragmaNode 
					selectorParts: #(primitive:) 
					arguments: {RBLiteralNode value: primitive} ].
			self shouldBeImplemented. self flag: 'should fetch in the literal array the module / error and recreate the named primitive.' ]."
		
	^ method pragmas collect: [ :each |
		RBPragmaNode 
			selector: each keyword
			arguments: (each arguments collect: [ :arg | RBLiteralNode value: arg ]) ]