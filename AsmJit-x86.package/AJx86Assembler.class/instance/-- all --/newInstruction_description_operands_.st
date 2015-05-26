newInstruction: name description: description operands: operands
	"check if name is jump "

	description isJump
		ifTrue: [ ^ self newJumpInstruction: name description: description operands: operands ].
	^ self newInstruction
		name: name;
		description: description;
		operands: operands;
		checkOperandsForConflict
	"Cannot check that at construction stage. Some operands may not be resolved yet (as AJReserveTemp)
		checkOperandsForConflict "