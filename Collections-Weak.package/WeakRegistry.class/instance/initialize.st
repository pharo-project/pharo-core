initialize-release
initialize
	valueDictionary := WeakIdentityKeyDictionary new.
	list := WeakFinalizationList new.
	sema := Semaphore forMutualExclusion.
	self installFinalizer.