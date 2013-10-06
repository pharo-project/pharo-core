printSlotDefinitionOn: aStream
	| printedAtLeastOnSlot |
	
	aStream << '{'.
	
	printedAtLeastOnSlot := false.
	
	self do: [ :slot |
		slot isVisible
			ifTrue: [
				aStream lf; tab; tab; store: slot; << '.'.
				printedAtLeastOnSlot := true.]].
			
	printedAtLeastOnSlot 
		ifTrue: [ aStream lf; tab ].
	
	aStream << '}'.