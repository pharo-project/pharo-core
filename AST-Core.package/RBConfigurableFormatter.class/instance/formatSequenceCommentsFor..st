private-formatting
formatSequenceCommentsFor: aSequenceNode
	originalSource isNil ifTrue: [^self].
	aSequenceNode comments
		do:
			[:each | 
			codeStream
				nextPutAll:
					(originalSource
						copyFrom: each first
						to: each last).
			self newLine]