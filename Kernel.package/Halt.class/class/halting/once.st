once
	| node |
	"<debuggerCompleteToSender>"
	
	RecursionStopper during: ["we need to ignore when the code below calls us again"
		node := thisContext sender sender sender sender  sender sourceNodeExecuted.
		(node hasProperty: #haltonce) ifTrue: [^self]. 
		node propertyAt: #haltonce put: true.
		^ self signal].
