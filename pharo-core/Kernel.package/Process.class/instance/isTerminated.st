accessing
isTerminated

	self isActiveProcess ifTrue: [^ false].
	^suspendedContext isNil
	  or: ["If the suspendedContext is the bottomContext it is the block in Process>>newProcess.
		   If so, and the pc is greater than the startpc, the bock has alrteady sent and returned
		   from value and there is nothing more to do."
		suspendedContext isBottomContext
		and: [suspendedContext pc > suspendedContext startpc]]