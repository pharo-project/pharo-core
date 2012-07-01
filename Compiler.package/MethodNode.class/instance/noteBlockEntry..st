code generation (closures)
noteBlockEntry: aBlock
	"Evaluate aBlock with the numbering for the block entry."
	locationCounter isNil ifTrue:
		[locationCounter := -1].
	aBlock value: locationCounter + 1.
	locationCounter := locationCounter + 2