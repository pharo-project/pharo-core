testExistingMethodWithClass
	| newMethod newClass |
	
	newClass:= RGFactory current createClassNamed: #OrderedCollection.
	newMethod:= (RGFactory current createMethodNamed: #add: parent: newClass)
					protocol: 'adding';
					sourceCode: 'add: newObject
									^self addLast: newObject'.
									
	self assert: (newMethod isMethod).
	self assert: (newMethod selector == #add:).
	self assert: (newMethod isMetaSide not).
	
	self assert: (newMethod parent = newClass).
	self assert: (newMethod parentName == newClass name).
	
	self assert: (newMethod parent parent == Smalltalk globals).
	self assert: (newMethod realClass = OrderedCollection).
	self assert: (newMethod compiledMethod = (OrderedCollection compiledMethodAt: #add:)).