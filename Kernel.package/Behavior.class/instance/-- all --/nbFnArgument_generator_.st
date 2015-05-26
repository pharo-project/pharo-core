nbFnArgument: argName generator: gen

	"Load the instance variable with given name" 

	(self allInstVarNames includes: argName) ifFalse: [ ^ nil ].
	^ NBSTIvarArgument new receiverClass: self; ivarName: argName