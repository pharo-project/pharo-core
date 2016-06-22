once
	| node |
	<debuggerCompleteToSender>

	RecursionStopper check ifTrue: [ ^self ].
	RecursionStopper on.
	node := thisContext sender sender sourceNodeExecuted.
	RecursionStopper off.
	(node hasProperty: #haltonce) ifTrue: [^self]. 
	node propertyAt: #haltonce put: true.
	^ self signal.