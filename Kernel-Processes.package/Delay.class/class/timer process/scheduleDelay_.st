scheduleDelay: aDelay
	"Private. Schedule this Delay."
	
	aDelay resumptionTime: Time millisecondClockValue + aDelay delayDuration. 
	"Do the above here, via the high priority timer process to avoid rollover bug due to process pre-emption
	since the caller cannot use the AccessProtect semaphore."
	aDelay beingWaitedOn: true.
	ActiveDelay 
		ifNil: [ ActiveDelay := aDelay ]
		ifNotNil: [
			aDelay resumptionTime < ActiveDelay resumptionTime
				ifTrue: [
					SuspendedDelays add: ActiveDelay.
					ActiveDelay := aDelay ]
				ifFalse: [ SuspendedDelays add: aDelay ]]
