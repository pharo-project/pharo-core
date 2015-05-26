formatMethodCommentFor: aMethodNode
	originalSource isNil ifTrue: [^self].
	(FormatCommentWithStatements
		ifTrue: [aMethodNode methodComments]
		ifFalse: [aMethodNode comments])
		do:
			[:each | 
			codeStream
				nextPutAll:
					(originalSource
						copyFrom: each start
						to: each stop).
			self newLines: NewLinesAfterMethodComment]