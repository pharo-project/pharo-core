initialization
setController: aECController position: aPoint 
	controller := aECController.
	context := controller context.
	self createTitle.
	self position: aPoint - (20 @ 0).
	self narrowCompletion
		ifTrue: [self openInWorld]. 
