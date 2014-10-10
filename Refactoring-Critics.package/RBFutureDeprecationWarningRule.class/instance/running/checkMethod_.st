checkMethod: aMethod 

	self plannedSelectorRenames do: [ :mapping | 
		| oldSelector newSelector |
		oldSelector := mapping key.
		newSelector := mapping value.
		(aMethod sendsSelector: oldSelector)
			 ifTrue: [ result addMethod: aMethod ] ]
	