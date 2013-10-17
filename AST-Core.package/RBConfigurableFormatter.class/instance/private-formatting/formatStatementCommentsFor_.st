formatStatementCommentsFor: aStatementNode
	originalSource isNil ifTrue: [^self].
	FormatCommentWithStatements ifFalse: [^self].
	aStatementNode statementComments
		do:
			[:each | 
			codeStream
				tab;
				nextPutAll:
						(originalSource
								copyFrom: each first
								to: each last)]