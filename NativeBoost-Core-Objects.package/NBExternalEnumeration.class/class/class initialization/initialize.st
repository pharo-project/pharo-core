initialize
	| unsigned |
	unsigned := true.
	self
		classPool:
			(self initializeEnum associations
				collect: [ :assoc | 
					(unsigned and: [ assoc value < 0 ])
						ifTrue: [ unsigned := false ].
					assoc key -> (self basicNew value: assoc value) ]) asDictionary.
	representationType := unsigned
		ifTrue: [ NBUInt32 new ]
		ifFalse: [ NBInt32 new ]