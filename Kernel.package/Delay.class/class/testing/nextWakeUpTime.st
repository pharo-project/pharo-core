nextWakeUpTime
self newCodeEnabled 
  ifTrue: [
	^ Scheduler nextWakeUpTime.
	]
  ifFalse: [
	^ AccessProtect
		critical: [ ActiveDelay 
				ifNil: [ 0 ]
				ifNotNil: [ ActiveDelay resumptionTime ]]
	].



