initialize-release
initialize
	sema := Semaphore forMutualExclusion.
	pages := Dictionary new.
	freeBlocks := IdentitySet new.
	reservedBlocks := Dictionary new.