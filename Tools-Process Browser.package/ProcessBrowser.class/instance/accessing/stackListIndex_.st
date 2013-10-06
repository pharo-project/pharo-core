stackListIndex: index 
	stackListIndex := index.
	selectedContext := (stackList notNil
						and: [index > 0]) ifTrue:
							[stackList at: index ifAbsent: []].
	selectedClass := nil.
	selectedSelector := nil.
	methodText := nil.
	self changed: #stackListIndex.
	self changed: #selectedMethod