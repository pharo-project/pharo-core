codeCaseOf: receiver messages: messages 
	| collection iterator cascadeFlag |
	iterator := 1 negated.
	cascadeFlag := OCDecompiler classVarNamed: #CascadeFlag.
	collection := Array new: (messages sum: [ :each | (each == cascadeFlag) asBit ]).
	1 to: collection size do: [ :i |
		| firstBlockStatements |
		iterator := iterator + 2.
		firstBlockStatements := OrderedCollection new.
		[(messages at: iterator) == cascadeFlag] whileFalse: [ 
			firstBlockStatements add: (messages at: iterator). 
			iterator := iterator + 1. ].
		collection at: i put: 
			(RBMessageNode
				receiver: (self codeBlock: firstBlockStatements returns: false) 
				selector: #-> 
				arguments: {messages at: iterator + 1}) ]. 
	^ RBMessageNode 
		receiver: receiver 
		selector: #caseOf: 
		arguments: {RBArrayNode statements: collection}