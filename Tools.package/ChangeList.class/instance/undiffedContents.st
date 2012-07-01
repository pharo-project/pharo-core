viewing access
undiffedContents
	^ listIndex = 0
		ifTrue: ['']
		ifFalse: [(changeList at: listIndex) text]