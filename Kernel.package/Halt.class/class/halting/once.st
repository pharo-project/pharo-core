once
	| callingContext node |
	<debuggerCompleteToSender>
	callingContext := thisContext sender sender.
	RecursionStopper during: ["we need to ignore when the code below calls us again"
		node :=  callingContext sourceNodeExecuted.
		(node hasProperty: #haltonce) ifTrue: [^self]. 
		node propertyAt: #haltonce put: true].
	^ self signal
