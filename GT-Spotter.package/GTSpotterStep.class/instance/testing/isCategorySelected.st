isCategorySelected

	^ isCategorySelected ifNil: [ isCategorySelected := Morph new activeHand shiftPressed ]