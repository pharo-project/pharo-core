*Tools-Inspector
inspectUntilCount: int 
	^ Halt isHaltOnceEnabled ifTrue: [ 
			Halt isCounting
				ifTrue: [
					Halt callsUntilHaltOnCount: Halt callsUntilHaltOnCount - 1.
					Halt callsUntilHaltOnCount > 0
						ifTrue: [self inspect]
						ifFalse: [ Halt disableHaltOnce ] ]
				ifFalse: [
					int = 1
						ifTrue: [self doExpiredInspectCount]
						ifFalse: [
							Halt callsUntilHaltOnCount: int - 1.
							self inspect]]]