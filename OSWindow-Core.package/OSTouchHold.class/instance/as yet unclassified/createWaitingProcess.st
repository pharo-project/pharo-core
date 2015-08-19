createWaitingProcess
	^ [ (Delay forMilliseconds: waitingTime) wait.
		(activeFingers allSatisfy: [ :each | each totalDistanceTravelled < maxDistanceTravelled])
			ifTrue: [ self sendToEventHandler: self createHoldEvent ] ] fork