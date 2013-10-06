isValidAddress: anAddress size: numBytes
	"check, if given memory range (at given address and numBytes size)
	 is valid (currently allocated) using this heap manager "
	^ sema critical: [
		reservedBlocks anySatisfy: [:blk |
			blk address <= anAddress and: [blk address + blk length >= (anAddress + numBytes)]]
	]