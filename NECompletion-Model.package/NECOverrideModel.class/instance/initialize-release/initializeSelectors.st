initializeSelectors
	clazz superclass ifNotNil: [ 
		self initializeSelectorsFor: clazz superclass].
	clazz selectorsDo:  [ :each | 
		| entry |
		entry := selectors 
			detect: [ :ea | ea contentsAsSymbol == each ]
			ifNone: [  ].
		entry notNil ifTrue: 
			[ selectors 
				remove: entry
				ifAbsent: [  ] ] ]