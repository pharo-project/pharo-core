private
okHit
	ok := true.
	self halt.
	self directory
		ifNil: [Beeper beep]
		ifNotNil: [modalView delete]