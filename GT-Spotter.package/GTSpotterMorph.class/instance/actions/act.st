act
	self spotterModel isEmpty ifTrue: [ ^self ].
	self spotterModel currentStep isEmpty ifTrue: [ ^ self ].
	self spotterModel currentStep act