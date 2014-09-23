checkMethod: aContext 

	self plannedSelectorRenames do: [ :mapping | 
		| oldSelector newSelector |
		oldSelector := mapping key.
		newSelector := mapping value.
		(aContext compiledMethod sendsSelector: oldSelector)
			 ifTrue: [
				result
					addClass: aContext selectedClass
					selector: aContext selector ] ]
	