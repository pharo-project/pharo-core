check: aClass forCriticsDo: aCriticBlock ifNone: alternativeBlock
	(self basicCheck: aClass)
		ifFalse: alternativeBlock
		ifTrue: [ aCriticBlock cull: (
			ReMissingMethodCritic
				for: aClass
				by: self
				class: aClass
				selector: #basicCheck:)
				beShouldBeImplemented ]