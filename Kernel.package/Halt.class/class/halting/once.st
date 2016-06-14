once
	| node |
	<debuggerCompleteToSender>
	node := thisContext sender sender sourceNodeExecuted.
	(node hasProperty: #haltOnce) ifTrue: [^self]. 
	node propertyAt: #haltOnce put: true.
	^ self signal.