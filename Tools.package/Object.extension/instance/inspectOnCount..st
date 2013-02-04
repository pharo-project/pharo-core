*Tools-Inspector
inspectOnCount: int 
	
	Halt isHaltOnceEnabled
		ifTrue: [
			Halt isCounting
				ifTrue: [
					Halt callsUntilHaltOnCount: Halt callsUntilHaltOnCount - 1.
					Halt callsUntilHaltOnCount = 0
						ifTrue: [self doExpiredInspectCount]]
				ifFalse: [
					int = 1
						ifTrue: [self doExpiredInspectCount]
						ifFalse: [Halt callsUntilHaltOnCount: int - 1]]]