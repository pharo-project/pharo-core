contentSelectionFor: aTextMorph

	aTextMorph ifLocked: [ ^ (1 to: 0) ].

	self selectedClass 	
		ifNotNil: [ self selectedMethod 
			ifNil: [ self selectedCategory 
				ifNotNil: [^ (1 to: self defaultMethodSource size) ]]].
	^ (1 to: 0)
