testing
testWithInstanceVariables
	| newClass instVar |
	
	newClass:= RGFactory current createClassNamed: #OrderedCollection.
	newClass addInstanceVariables: #(array firstIndex).
	newClass addInstVarNamed: #lastIndex.
	
	self assert: (newClass instanceVariables size = 3).
	self assert: (newClass instVarNames size = 3).
	self assert: (newClass allInstVarNames size = 3).
	
	instVar:= newClass instVarNamed: #firstIndex.
	self assert: (instVar notNil).
	self assert: (instVar parent = newClass).
	self assert: (instVar isInstanceVariable).
	self assert: (instVar isVariable).
	self assert: (instVar parentName == newClass name).
	self assert: (instVar realClass = OrderedCollection).
	
	newClass removeInstVarNamed: #array.
	self assert: (newClass instanceVariables size = 2).
	self assert: ((newClass instVarNamed: #array) isNil).
	