initialize-release
initialize
	super initialize.
	sema := Semaphore forMutualExclusion.
	self reset.
	WeakArray addWeakDependent: self