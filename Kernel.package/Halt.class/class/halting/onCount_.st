onCount: anInteger 
	"Halt on the anInteger-th time through"
	<debuggerCompleteToSender>	
	| node | 
	node := thisContext sender sender sourceNodeExecuted.
	(node hasProperty: #haltCount) ifFalse: [
		node propertyAt: #haltCount put: 0.
		].
	 node propertyAt: #haltCount put: (node propertyAt: #haltCount) + 1.
	((node propertyAt: #haltCount) = anInteger) ifTrue: [ ^self signal ].