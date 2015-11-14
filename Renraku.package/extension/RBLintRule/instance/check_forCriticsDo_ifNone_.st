check: anEntity forCriticsDo: aCriticBlock ifNone: alternativeBlock

	(self basicCheck: anEntity)
		ifTrue: [ aCriticBlock cull: (ReTrivialCritic
			for: anEntity
			by: self ) ]
		ifFalse: [ alternativeBlock value ]