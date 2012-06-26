initialization
startUp: resuming
	resuming ifTrue: [
		World ifNotNil: [	World install. ActiveHand position: 100@100].
		self processUpdates.
	].
