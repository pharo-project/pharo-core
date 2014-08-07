createARemovalMethodReference: aRemovedEvent
	
	| method |
	method := aRemovedEvent methodRemoved.
	^ RGMethodDefinition
		realClass: method methodClass 
		selector: method selector