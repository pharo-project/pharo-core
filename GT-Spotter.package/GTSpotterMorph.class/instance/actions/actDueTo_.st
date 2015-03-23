actDueTo: anEventType
	self spotterModelDo: [
		self spotterModel isEmpty ifTrue: [ ^self ].
		self spotterModel currentStep isEmpty ifTrue: [ ^ self ].
		self spotterModel currentStep actDueTo: anEventType ]