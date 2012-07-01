*Tools-Inspector
inspectOnCount: int 
	self haltOnceEnabled
		ifTrue: [self hasHaltCount
				ifTrue: [self decrementAndCheckHaltCount
						ifTrue: [self doExpiredInspectCount]]
				ifFalse: [int = 1
						ifTrue: [self doExpiredInspectCount]
						ifFalse: [self setHaltCountTo: int - 1]]]