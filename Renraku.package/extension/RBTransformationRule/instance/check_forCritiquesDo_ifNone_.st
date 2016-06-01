check: aMethod forCritiquesDo: aCriticBlock ifNone: alternativeBlock
	
	(self basicCheck: aMethod)
		ifTrue: [
			aCriticBlock cull: (
				ReTransformationCritique
					for: aMethod
					by: self
					tree: rewriteRule tree)  ]
		ifFalse: [ alternativeBlock value ]