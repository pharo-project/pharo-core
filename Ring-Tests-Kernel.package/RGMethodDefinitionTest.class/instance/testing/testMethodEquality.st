testMethodEquality

	| newMethod newClass |
	self assert: (OrderedCollection>>#size) asRingDefinition = (OrderedCollection>>#size) asRingDefinition.
	
	newMethod := ((OrderedCollection>>#size) asRingDefinition)
					sourceCode: 'size
						^0'.
	self assert: ((OrderedCollection>>#size) asRingDefinition = newMethod).
	
	newClass:= RGClassDefinition named: #OrderedCollection.
	newMethod:= (RGFactory current createMethodNamed: #size parent: newClass).
	self assert: ((OrderedCollection>>#size) asRingDefinition = newMethod).
	
	newMethod:= (RGFactory current createMethodNamed: #size parent: (SortedCollection asRingDefinition)).
	self deny: ((OrderedCollection>>#size) asRingDefinition = newMethod).