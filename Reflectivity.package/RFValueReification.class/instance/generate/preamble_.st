preamble: aNode
	^aNode isReturn 
		ifTrue: [RFStoreIntoTempNode named: #RFReifyReturnValueVar]
		ifFalse: [ #() ].