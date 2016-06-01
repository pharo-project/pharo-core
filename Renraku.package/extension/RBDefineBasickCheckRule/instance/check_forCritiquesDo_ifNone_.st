check: aClass forCritiquesDo: aCriticBlock ifNone: alternativeBlock
	(self basicCheck: aClass)
		ifFalse: alternativeBlock
		ifTrue: [ aCriticBlock cull: (
			ReMissingMethodCritique
				for: aClass
				by: self
				class: aClass
				selector: #basicCheck:)
				beShouldBeImplemented ]