doesNotUnderstand: message
	(message selector beginsWith: 'opt')
		ifTrue: [ ^ options at: message selector ifAbsent: false ].
	^ super doesNotUnderstand: message