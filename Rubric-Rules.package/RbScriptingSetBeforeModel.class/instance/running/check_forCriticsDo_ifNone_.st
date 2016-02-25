check: anAST forCriticsDo: aCriticBlock ifNone: alternativeBlock

	anAST nodesDo: [ :node |
		node isMessage ifTrue: [ 
			node selector = #model: ifTrue: alternativeBlock.
			node selector = #beForSmalltalkScripting ifTrue: [
				aCriticBlock value: (ReTrivialCritic
					withAnchor: (ReIntervalSourceAnchor
						entity: anAST
						interval: node sourceInterval)
					by: self) ] ] ].
					

	alternativeBlock value.

	