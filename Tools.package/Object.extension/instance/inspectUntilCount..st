*Tools-Inspector
inspectUntilCount: int 
	self haltOnceEnabled
		ifTrue: [self hasHaltCount
				ifTrue: [self decrementAndCheckHaltCount
						ifTrue: [self doExpiredInspectCount]
						ifFalse: [self inspect]]
				ifFalse: [int = 1
						ifTrue: [self doExpiredInspectCount]
						ifFalse: [self setHaltCountTo: int - 1]]]