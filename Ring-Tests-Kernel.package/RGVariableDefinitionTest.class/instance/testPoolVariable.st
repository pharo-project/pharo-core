testing
testPoolVariable
	| poolVar newClass |
	
	poolVar:= RGFactory current createPoolVariableNamed: 'TextConstants'.
	
	self assert: (poolVar isPoolVariable).
	self assert: (poolVar isVariable).
	self assert: (poolVar name = 'TextConstants').
	self assert: (poolVar parent isNil).
	self assert: (poolVar isMetaSide not).
	
	newClass:= RGFactory current createClassNamed: #OrderedCollection.
	poolVar:= RGFactory current createPoolVariableNamed: 'TextConstants' parent: newClass.
	
	self assert: (poolVar parent = newClass).
	self assert: (newClass poolDictionaries isEmpty).
	
	newClass poolDictionaries add: poolVar.
	self assert: (newClass poolDictionaries size = 1).