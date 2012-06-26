printing
printWithClosureAnalysisIfNil: aStream indent: level

	self printWithClosureAnalysisReceiver: receiver on: aStream indent: level.

	^self printWithClosureAnalysisKeywords: selector key
		arguments: (Array with: arguments first)
		on: aStream indent: level