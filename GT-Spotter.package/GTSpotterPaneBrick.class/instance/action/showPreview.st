showPreview
	
	self isPreviewShown ifTrue: [ ^ self ].
	
	self addBrickBack: self previewBrick.
	self previewBrick spotterModel ifNotNil: [
		self previewBrick updatePreviewWith: self previewBrick spotterModel currentStep selectedCandidate ].
	
	self contentsBrick hSpaceFill: (100 - self previewBrick layout hPercent).
	self changed.