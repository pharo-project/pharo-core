protocol
toggleLock

	self canChangeLock ifFalse: [ ^ self ].
	
	self 
		ifLocked: [
			self unlock.
			lockIcon image: self defaultUnLockIcon
			 ]
		ifUnlocked: [ 
			self lock.
			lockIcon image: self defaultLockIcon ].
		
	self model ifNotNil: [:m |
		self lockSelector ifNotNil: [:s |
			m perform: s withEnoughArguments: { self locked . self } ]]