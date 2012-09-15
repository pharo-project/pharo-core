method reference creation
createTheMethodReference: aModifiedMethodEvent
	
	| method |
	method := aModifiedMethodEvent newMethod.

	^ (RGMethodDefinition
		realClass: method methodClass
		selector: method selector) asHistorical