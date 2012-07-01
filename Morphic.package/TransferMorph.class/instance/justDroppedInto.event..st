dropping/grabbing
justDroppedInto: targetMorph event: anEvent 
	"If only world wants this TransferMorph, treat it as unaccepted (see also >>delete)."

	super justDroppedInto: targetMorph event: anEvent.
	accepted := targetMorph ~= self world.
	self animationForMoveSuccess: accepted.
	accepted ifTrue: [self dropNotifyRecipient ifNotNil: [self dropNotifyRecipient dropAcceptedMorph: self from: targetMorph]].
	self delete