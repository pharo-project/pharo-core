totalAllocatedMemory
	| total |
	
	total := 0.
	sema critical: [
		reservedBlocks valuesDo: [:blk | total := total + blk length ]].
	^ total