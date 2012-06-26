navigation
pageOfNodeIndex: anIndex
	^ (anIndex > 0 and: [anIndex <= self nodeList size])
		ifTrue: [(anIndex // pageSize) + 1]
		ifFalse: [nil]
			