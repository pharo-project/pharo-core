preamble: aNode
	(aNode isKindOf: RBProgramNode) ifFalse: [ ^#() ].
	^aNode isReturn 
		ifTrue: [RFStoreIntoTempNode named: #RFReifyReturnValueVar]
		ifFalse: [ #() ].