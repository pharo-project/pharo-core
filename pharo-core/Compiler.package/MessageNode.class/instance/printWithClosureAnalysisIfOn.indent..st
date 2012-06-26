printing
printWithClosureAnalysisIfOn: aStream indent: level

	receiver ifNotNil:
		[receiver printWithClosureAnalysisOn: aStream indent: level + 1 precedence: precedence].
	(arguments last isJust: NodeNil) ifTrue:
		[^self printWithClosureAnalysisKeywords: #ifTrue: arguments: (Array with: arguments first)
					on: aStream indent: level].
	(arguments last isJust: NodeFalse) ifTrue:
		[^self printWithClosureAnalysisKeywords: #and: arguments: (Array with: arguments first)
					on: aStream indent: level].
	(arguments first isJust: NodeNil) ifTrue:
		[^self printWithClosureAnalysisKeywords: #ifFalse: arguments: (Array with: arguments last)
					on: aStream indent: level].
	(arguments first isJust: NodeTrue) ifTrue:
		[^self printWithClosureAnalysisKeywords: #or: arguments: (Array with: arguments last)
					on: aStream indent: level].
	self printWithClosureAnalysisKeywords: #ifTrue:ifFalse: arguments: arguments
					on: aStream indent: level