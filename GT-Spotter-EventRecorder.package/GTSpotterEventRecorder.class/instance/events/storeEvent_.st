storeEvent: anEvent
	recordedData nextPut: anEvent.
	mutex critical: [ 
		(process isNil or: [ process isTerminated ]) ifTrue: [ self initializeDeliveryProcess ] ]