createTheMethodReference: aModifiedMethodEvent
	
	| method |
	method := aModifiedMethodEvent methodAffected.

	^ (RGMethodDefinition
		realClass: method methodClass
		selector: method selector) asHistorical