printing
printWithClosureAnalysisToDoOn: aStream indent: level

	| limitNode |
	self printWithClosureAnalysisReceiver: receiver on: aStream indent: level.

	limitNode := (arguments last == nil
				or: [arguments last isAssignmentNode not])
					ifTrue: [arguments first]
					ifFalse: [arguments last value].
	(selector key = #to:by:do:
	 and: [(arguments at: 2) isConstantNumber
	 and: [(arguments at: 2) key = 1]])
		ifTrue: [self printWithClosureAnalysisKeywords: #to:do:
					arguments: (Array with: limitNode with: (arguments at: 3))
					on: aStream indent: level]
		ifFalse: [self printWithClosureAnalysisKeywords: selector key
					arguments: (Array with: limitNode) , arguments allButFirst
					on: aStream indent: level]