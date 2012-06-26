method reference creation
createARemovalMethodReference: aRemovedEvent
	
	| method |
	method := aRemovedEvent item.
	^ RGMethodDefinition
		realClass: method methodClass 
		selector: method selector