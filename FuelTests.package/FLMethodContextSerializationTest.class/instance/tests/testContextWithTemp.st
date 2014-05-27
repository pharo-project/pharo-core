testContextWithTemp
	"This test should be improved"
	| methodContext1  materializedContext1  |
	methodContext1 := (Context newForMethod: FLPair >> #methodWithTemp).
	methodContext1 
		initializeWith: nil 
		stackPtr: 1 
		method: FLPair >> #methodWithTemp 
		receiver:  (FLPair new right: 4; left: 2) 
		sender: nil.
	methodContext1 tempNamed: 'string' put: 'capo'.
	
	materializedContext1 := self resultOfSerializeAndMaterialize: methodContext1.
	self assert: (materializedContext1 tempNamed: 'string') = 'capo'.
	methodContext1 assertWellMaterializedInto: materializedContext1 in: self.