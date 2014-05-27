testContextWithSender
	"This test should be improved"
	| methodContext1 methodContext2 materializedContext1 |
	methodContext1 := (Context newForMethod: FLPair >> #method1).
	methodContext1 
		initializeWith: 23 
		stackPtr: 1 
		method: FLPair >> #method1 
		receiver:  (FLPair new right: 4; left: 2) 
		sender: nil.
		
	methodContext2 := (Context newForMethod: FLPair >> #method2).
	methodContext2 
		initializeWith: 18 
		stackPtr: 1 
		method: FLPair >> #method2 
		receiver:  (FLPair new right: 5; left: 6) 
		sender: nil.

	methodContext1 privSender:  methodContext2.
		
	materializedContext1 := self resultOfSerializeAndMaterialize: methodContext1.
	methodContext1 assertWellMaterializedInto: materializedContext1 in: self.