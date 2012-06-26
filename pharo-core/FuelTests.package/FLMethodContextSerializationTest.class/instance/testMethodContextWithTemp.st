tests
testMethodContextWithTemp
	"This test should be improved"
	| methodContext1  materializedMethodContext1  |
	methodContext1 := (MethodContext newForMethod: FLPair >> #methodWithTemp).
	methodContext1 
		initializeWith: nil 
		stackPtr: 1 
		method: FLPair >> #methodWithTemp 
		receiver:  (FLPair new right: 4; left: 2) 
		sender: nil.
	methodContext1 tempNamed: 'string' put: 'capo'.
	
	materializedMethodContext1 := self resultOfSerializeAndMaterialize: methodContext1.
	self assert: (materializedMethodContext1 tempNamed: 'string') = 'capo'.
	methodContext1 assertWellMaterializedInto: materializedMethodContext1 in: self.