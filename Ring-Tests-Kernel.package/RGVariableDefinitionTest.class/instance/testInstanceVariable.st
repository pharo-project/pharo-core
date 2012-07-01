testing
testInstanceVariable
	| instVar newClass |
	
	instVar:= RGFactory current createInstanceVariableNamed: 'size'.
	
	self assert: (instVar isInstanceVariable).
	self assert: (instVar isVariable).
	self assert: (instVar name = 'size').
	self assert: (instVar parent isNil).
	self assert: (instVar isMetaSide not).
	
	newClass:= RGFactory current createClassNamed: #OrderedCollection.
	instVar:= RGFactory current createInstanceVariableNamed: 'array' parent: newClass.
	
	self assert: (instVar parent = newClass).
	self assert: (newClass instanceVariables isEmpty).
	
	newClass instanceVariables add: instVar.
	self assert: (newClass instanceVariables size = 1).