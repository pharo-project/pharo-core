onCandidateSelected
	
	self stepModel selected ifNil: [ ^ self ].
	self stepModel selectedCategory = self categoryProcessor
		ifTrue: [ self showActionbar ]
		ifFalse: [ self hideActionbar ]