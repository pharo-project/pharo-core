formatTemporariesFor: aSequenceNode
	aSequenceNode temporaries isEmpty ifTrue: [^self].
	self
		bracketWith: '|'
		around:
			[self space.
			aSequenceNode temporaries
				do:
					[:each | 
					self visitNode: each.
					FormatCommentWithStatements ifTrue: [self formatCommentsFor: each].
					self space]].
	self newLines: NewLinesAfterTemporaries