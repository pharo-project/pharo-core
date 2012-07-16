protocol
postNewSlice: workingCopy message: aMessage

	workingCopy ifNil: [ ^ self ].
	self commit: workingCopy in: MCHttpRepository inboxRepository message: aMessage