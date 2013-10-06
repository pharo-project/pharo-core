nextWakeUpTime
	^ AccessProtect
		critical: [ ActiveDelay 
				ifNil: [ 0 ]
				ifNotNil: [ ActiveDelay resumptionTime ]]