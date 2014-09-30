hasUnacceptedEdits: aBoolean
	self autoAccept
		ifFalse: [ hasUnacceptedEdits := aBoolean ]