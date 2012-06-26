initialize-release
initializeSelectors
	self initializeSelectorsFor: clazz superclass.
	clazz methodDictionary keysDo: 
		[ :each | 
		| entry |
		entry := selectors 
			detect: [ :ea | ea contentsAsSymbol == each ]
			ifNone: [  ].
		entry notNil ifTrue: 
			[ selectors 
				remove: entry
				ifAbsent: [  ] ] ]