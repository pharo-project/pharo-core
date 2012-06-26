private-formatting
formatStatementsFor: aSequenceNode 
	| statements |
	statements := aSequenceNode statements.
	statements isEmpty ifTrue: [^self].
	1 to: statements size - 1
		do: 
			[:i | 
			self visitNode: (statements at: i).
			codeStream nextPut: $..
			self formatStatementCommentFor: (statements at: i).
			self indent].
	self visitNode: statements last.
	self formatStatementCommentFor: statements last