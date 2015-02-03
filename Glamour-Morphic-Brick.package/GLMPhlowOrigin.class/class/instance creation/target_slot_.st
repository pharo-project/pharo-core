target: anObject slot: aSlotSymbol

	^ self new phlowObject: anObject; slot: ((anObject class slotsDictionary at: aSlotSymbol)); yourself