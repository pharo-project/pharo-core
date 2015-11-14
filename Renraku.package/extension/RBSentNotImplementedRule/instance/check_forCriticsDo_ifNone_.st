check: aMethod forCriticsDo: aCriticBlock ifNone: alternativeBlock

	| messages |
	messages := aMethod messages reject: [ :each | each == aMethod selector or: [ self implementorsExists: each ] ].
	messages
		ifEmpty: [ alternativeBlock value ]
		ifNotEmpty: [ :collection |
			collection collect: [ :message |
				ReStringSearchCritic
					for: aMethod
					by: self
					badSubstring: message ]
			thenDo: [ :critic | aCriticBlock value: critic ] ]