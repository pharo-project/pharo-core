influencingRegisters
	self is16
		ifFalse: [ ^ self as16 influencingRegisters ].
	^ { self as16. self as32. self as64 }