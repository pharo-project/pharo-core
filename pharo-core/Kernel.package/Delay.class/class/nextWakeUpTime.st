testing
nextWakeUpTime
	^ AccessProtect
		critical: [ActiveDelay isNil
				ifTrue: [0]
				ifFalse: [ActiveDelay resumptionTime]]