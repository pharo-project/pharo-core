accessing
explorerFor: anObject
	^UIManager default explorer: self for: anObject withLabel: (anObject printStringLimitedTo: 32)