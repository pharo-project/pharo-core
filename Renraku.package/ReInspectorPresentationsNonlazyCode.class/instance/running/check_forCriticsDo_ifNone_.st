check: anAST forCriticsDo: aCriticBlock ifNone: alternativeBlock


	anAST pragmaNamed: #gtInspectorPresentationOrder: ifAbsent: [ ^ alternativeBlock value ].
	
	^ (anAST statements
			reject: [ :statement |
				self
					presentation: anAST arguments first
					isTheLeftmostRecepientIn: (statement isReturn
						ifTrue: [ statement value ]
						ifFalse: [ statement ]) ]			
			thenCollect: [ :statement |
				aCriticBlock cull: (ReTrivialCritic
					withAnchor: (ReIntervalSourceAnchor
						entity: anAST
						interval: statement sourceInterval)
					by: self) ])
				
			ifEmpty: alternativeBlock