testContextWithClosureAndSender
	"This test should be improved"
	| methodContext1  materializedContext2  methodContext2 |
	
	methodContext1 := (Context newForMethod: FLPair >> #method1).
	methodContext1 
		initializeWith: 23 
		stackPtr: 1 
		method: FLPair >> #method1 
		receiver:  (FLPair new right: 4; left: 2) 
		sender: nil.
	
	methodContext2 := self class blockClosureContextTestingWithSender: methodContext1.
	materializedContext2 := self resultOfSerializeAndMaterialize: methodContext2.
	methodContext2 assertWellMaterializedInto: materializedContext2 in: self.
	
