once
	| node |
	<debuggerCompleteToSender>
	node := thisContext sender sender sourceNodeExecuted.
	(node hasProperty: #haltonce) ifTrue: [^self]. 
	node propertyAt: #haltonce put: true.
	^ self signal.