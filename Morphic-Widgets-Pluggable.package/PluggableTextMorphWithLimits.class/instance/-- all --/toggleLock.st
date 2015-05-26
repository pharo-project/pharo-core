toggleLock

	self canChangeLock ifFalse: [ ^ self ].
	
	self locked
		ifTrue: [
			self unlock.
			lockIcon image: self defaultUnLockIcon
			 ]
		ifFalse: [ 
			self lock.
			lockIcon image: self defaultLockIcon ].
		
	self model ifNotNil: [:m |
		self lockSelector ifNotNil: [:s |
			m perform: s withEnoughArguments: { self locked . self } ]]