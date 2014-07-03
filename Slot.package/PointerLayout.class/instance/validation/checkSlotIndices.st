checkSlotIndices
	| slots current |
	slots := slotScope flatten.
	[ slots size > 1 ] whileTrue: [
		current := slots removeFirst.
		current size> 0 ifTrue: ["skip slots that have no index"
			self assert: slots first index = (current index + current size) ]]