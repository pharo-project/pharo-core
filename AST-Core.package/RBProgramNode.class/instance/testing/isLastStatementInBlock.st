isLastStatementInBlock
	self parent isSequence ifFalse: [ ^false ].
	^self parent parent isBlock and: [ self parent statements last == self ]