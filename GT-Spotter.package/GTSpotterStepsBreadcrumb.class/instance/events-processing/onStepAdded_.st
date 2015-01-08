onStepAdded: ann
	|step origin previousStep selectedCandidate|
	
	self spotterModel steps size <= 1 ifTrue: [ ^ self ].
	
	step := ann stepModel.
	previousStep := (step spotter steps at: step spotter steps size - 1).
	selectedCandidate := previousStep selectedCandidate.
	origin := step origin.
	
	self push: (GLMLabelBrick new
		text: ((selectedCandidate = origin)
			ifTrue: [ (previousStep selected renderingProcessor render: selectedCandidate) labelBrick text ]
			ifFalse: [ (origin isKindOf: Collection) ifTrue: [ previousStep selected processor title ] ifFalse: [ origin gtDisplayString] ]))