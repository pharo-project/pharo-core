testContext
	"This test should be improved"
	| methodContext1  materializedContext1  |
	methodContext1 := (Context newForMethod: FLPair >> #method1).
	methodContext1 
		initializeWith: 23 
		stackPtr: 1 
		method: FLPair >> #method1 
		receiver:  (FLPair new right: 4; left: 2) 
		sender: nil.
		
	materializedContext1 := self resultOfSerializeAndMaterialize: methodContext1.
	methodContext1 assertWellMaterializedInto: materializedContext1 in: self.