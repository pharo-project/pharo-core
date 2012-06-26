visitor-double dispatching
acceptBlockNode: aBlockNode startBlockString: startBlockString endBlockString: endBlockString 
	| seqNode multiline formattedBody formatter |
	seqNode := aBlockNode body.
	formatter := (self copy)
				lineStart: 0;
				yourself.
	formattedBody := formatter format: seqNode.
	multiline := self lineLength + formattedBody size > self maxLineSize 
				or: [formatter isMultiLine].
	multiline ifTrue: [self indent].
	codeStream nextPutAll: startBlockString.
	aBlockNode arguments do: 
			[:each | 
			codeStream nextPut: $:.
			self visitNode: each.
			codeStream nextPut: $ ].
	aBlockNode arguments notEmpty 
		ifTrue: 
			[codeStream nextPutAll: '| '.
			multiline ifTrue: [self indent]].
	codeStream
		nextPutAll: formattedBody;
		nextPutAll: endBlockString