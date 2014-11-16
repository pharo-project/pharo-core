scheduleDelay: aDelay
	"Private. Schedule this Delay."
	
	aDelay beingWaitedOn: true.
	activeDelay 
		ifNil: [ activeDelay := aDelay ]
		ifNotNil: [
			aDelay resumptionTime < activeDelay resumptionTime
				ifTrue: [
					suspendedDelays add: activeDelay.
					activeDelay := aDelay ]
				ifFalse: [ suspendedDelays add: aDelay ]]
