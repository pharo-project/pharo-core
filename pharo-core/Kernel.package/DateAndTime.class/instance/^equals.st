ansi protocol
= aDateAndTime 
	self == aDateAndTime ifTrue: [ ^ true ].
	(self species = aDateAndTime species) ifFalse: [ ^ false ].
	^ self offset = aDateAndTime offset
		ifTrue: [ self hasEqualTicks: aDateAndTime ]
		ifFalse: [ self asUTC ticks = aDateAndTime asUTC ticks ]