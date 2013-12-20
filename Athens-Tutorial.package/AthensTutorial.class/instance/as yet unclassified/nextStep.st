nextStep
	stepNumber = 31 ifTrue: [ ^ self ].
	stepNumber := self stepNumber + 1.
	self updateContents.
