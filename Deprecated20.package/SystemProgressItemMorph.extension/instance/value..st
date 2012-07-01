*Deprecated20
value: anObject

	self deprecated: 'Use SystemProgressItemMorph''s "API" protocol' on: '20 June, 2012' in: 'Pharo 2.0'.
	
	(anObject isKindOf: Number) ifTrue: [ self current: anObject ].
	((anObject isKindOf: String) and: [ anObject isSymbol not ]) ifTrue: [ ^ self label: anObject ].
	anObject = #label ifTrue: [ ^ self label ].
	anObject = #increment ifTrue: [ ^ self increment ].
	anObject = #decrement ifTrue: [ ^ self decrement ].
	anObject = #setMax ifTrue: [ ^ self error: '#setMax no longer supported. File a bug report if you want it back' ].
	anObject = #setMin ifTrue: [ ^ self error: '#setMin no longer supported. File a bug report if you want it back' ].
	anObject = #stripe ifTrue: [ ^ self error: '#stripe no longer supported. File a bug report if you want it back' ].