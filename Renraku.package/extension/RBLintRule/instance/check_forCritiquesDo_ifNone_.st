check: anEntity forCritiquesDo: aCriticBlock ifNone: alternativeBlock

	(self basicCheck: anEntity)
		ifTrue: [ aCriticBlock cull: (ReTrivialCritique
			for: anEntity
			by: self ) ]
		ifFalse: [ alternativeBlock value ]