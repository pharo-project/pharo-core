testMethodContextWithNilPc
	"This test should be improved"
	| methodContext1  materializedMethodContext1  |
	methodContext1 := (Context newForMethod: FLPair >> #method1).
	methodContext1 
		initializeWith: nil 
		stackPtr: 1 
		method: FLPair >> #method1 
		receiver:  (FLPair new right: 4; left: 2) 
		sender: nil.
		
	materializedMethodContext1 := self resultOfSerializeAndMaterialize: methodContext1.
	methodContext1 assertWellMaterializedInto: materializedMethodContext1 in: self.