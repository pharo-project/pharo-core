check: anAST forCriticsDo: aCriticBlock ifNone: alternativeBlock

	anAST nodesDo: [ :node |
		node isMessage ifTrue: [ 
			node selector = #model: ifTrue: [ ^ alternativeBlock value ].
			(self scriptingMethods includes: node selector) ifTrue: [
				aCriticBlock value: (ReTrivialCritic
					withAnchor: (ReIntervalSourceAnchor
						entity: anAST
						interval: node sourceInterval)
					by: self) ] ] ].
					

	alternativeBlock value.

	