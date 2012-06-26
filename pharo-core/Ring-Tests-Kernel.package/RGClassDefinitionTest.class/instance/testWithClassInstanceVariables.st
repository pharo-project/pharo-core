testing
testWithClassInstanceVariables
	| newClass metaClass classInstVar |
	
	newClass:= RGFactory current createClassNamed: #HashTableSizes.
	newClass withMetaclass.
	metaClass:= newClass theMetaClass.
	metaClass addInstanceVariables: #(sizes).
	
	self assert: (metaClass instanceVariables size = 1).
	self assert: (metaClass instVarNames size = 1).
	self assert: (metaClass allInstVarNames size = 1).
	
	classInstVar:= metaClass instVarNamed: #sizes.
	self assert: (classInstVar notNil).
	self assert: (classInstVar parent = metaClass).
	self assert: (classInstVar isClassInstanceVariable).
	self assert: (classInstVar isVariable).
	self assert: (classInstVar parentName = metaClass name).
	self assert: (classInstVar realClass = HashTableSizes class).
	
	metaClass removeInstVarNamed: #sizes.
	self assert: (metaClass instanceVariables isEmpty).
	self assert: ((metaClass instVarNamed: #sizes) isNil).
	