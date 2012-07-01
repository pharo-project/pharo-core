method reference creation
createTheMethodReference: aModifiedMethodEvent
	
	| method |
	method := aModifiedMethodEvent item.

	^ (RGMethodDefinition
		realClass: method methodClass
		selector: method selector) asHistorical