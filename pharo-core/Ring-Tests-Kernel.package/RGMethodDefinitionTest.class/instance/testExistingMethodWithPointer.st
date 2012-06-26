testing
testExistingMethodWithPointer
	| newMethod |
	
	newMethod:= RGFactory current createMethodNamed: #size realParent: OrderedCollection.
									
	self assert: (newMethod parent isNil).
	self assert: (newMethod parentName == #OrderedCollection).
	self assert: (newMethod sourceCode notNil).
	self assert: (newMethod protocol notNil).
	self assert: (newMethod stamp notNil).
	self assert: (newMethod isExtension not)