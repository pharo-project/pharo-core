loading
load
	self executePreLoadActions.
	self behaviors do: [:aBehavior | aBehavior registerOnLoad].
	Smalltalk globals flushClassNameCache.
	self behaviors do: [:aBehavior | aBehavior rebindOnLoad].
	self behaviors do: [:aBehavior | self notifyBehaviorAddition: aBehavior].
	self loadExtensionMethods.
	Behavior flushObsoleteSubclasses.
	self initializeClassesIfNecessary.
	self executePostLoadActions.