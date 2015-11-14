check: aMethod forCriticsDo: aCriticBlock ifNone: alternativeBlock
	
	(self basicCheck: aMethod)
		ifTrue: [
			aCriticBlock cull: (
				ReTransformationCritic
					for: aMethod
					by: self
					tree: rewriteRule tree)  ]
		ifFalse: [ alternativeBlock value ]