check: anAST forCriticsDo: aCriticBlock ifNone: alternativeBlock

	anAST nodesDo: [ :node |
		(node isVariable and: [
		node isGlobal and: [ 
		self systemClassNames includes: node name ] ])
			ifTrue: [ aCriticBlock value: (ReTrivialCritic
					withAnchor: (ReIntervalSourceAnchor
						entity: anAST
						interval: node sourceInterval)
					by: self) ] ].

	alternativeBlock value.

	