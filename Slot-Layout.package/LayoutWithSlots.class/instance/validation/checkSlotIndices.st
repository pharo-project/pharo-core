checkSlotIndices
	| slots current |
	slots := slotScope flatten.
	[ slots size > 1 ] whileTrue: [
		current := slots removeFirst.
		self assert: slots first index = (current index + current size) ]