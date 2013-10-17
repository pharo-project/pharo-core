totalAllocatedMemory

	| blk total |
	
	blk := initialBlock.
	total := 0.
	[ blk notNil ] whileTrue: [
		blk isFree ifFalse: [ total := total + blk length ].
		blk := blk right.
		].
	^ total