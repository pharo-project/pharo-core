check: anAST forCriticsDo: aCriticBlock ifNone: alternativeBlock


	anAST pragmaNamed: #gtInspectorPresentationOrder: ifAbsent: [ ^ alternativeBlock value ].
	
	^ (anAST sendNodes
			reject: [ :message |
				(self presentationScriptingMathods includes: message selector) ==> [
				| argument |
				argument := message arguments first.
				argument isBlock or: [ argument isLiteralNode ] ] ]
			thenCollect: [ :message |
				aCriticBlock cull: (ReTrivialCritic
					withAnchor: (ReIntervalSourceAnchor
						entity: anAST
						interval: message	 sourceInterval)
					by: self) ])
				
			ifEmpty: alternativeBlock