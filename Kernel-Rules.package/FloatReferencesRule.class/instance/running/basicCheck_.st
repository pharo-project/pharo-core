basicCheck: anAST 

	anAST nodesDo: [ :node |
		(node isVariable and: [
		node isGlobal and: [ 
		self systemClassNames includes: node name ] ])
			ifTrue: [ ^ true ] ].

	^ false