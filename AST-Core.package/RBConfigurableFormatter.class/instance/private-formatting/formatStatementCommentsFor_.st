formatStatementCommentsFor: aStatementNode
	originalSource isNil
		ifTrue: [ ^ self ].
	FormatCommentWithStatements
		ifFalse: [ ^ self ].
	aStatementNode statementComments
		do: [ :each | 
			| count |
			count := self newLinesBeforeStartingAt: each start.
			RetainBlankLinesBeforeComments & (count > 0)
				ifTrue: [ self newLines: count ]
				ifFalse: [ codeStream tab ].

			codeStream nextPutAll: (originalSource copyFrom: each start to: each stop) ]