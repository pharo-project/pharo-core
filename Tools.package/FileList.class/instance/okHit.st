private
okHit
	ok := true.
	self directory
		ifNil: [Beeper beep]
		ifNotNil: [modalView delete]