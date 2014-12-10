onStepAdded: ann
	|step|
	
	self spotterModel steps size <= 1 ifTrue: [ ^ self ].
	
	step := ann stepModel.
	
	self flag: 'take the step into account'.
		
	self push: (GLMLabelBrick new text: (step origin gtDisplayString))
	