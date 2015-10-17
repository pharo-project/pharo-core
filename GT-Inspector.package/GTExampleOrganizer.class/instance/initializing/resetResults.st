resetResults
	Smalltalk garbageCollect; garbageCollectMost.
	GTExampleResult allSubInstances do: [ :each | [ each detachFromSystem ] on: Error do: [ " ignore / do not abort " ] ].
	Smalltalk garbageCollect; garbageCollectMost.