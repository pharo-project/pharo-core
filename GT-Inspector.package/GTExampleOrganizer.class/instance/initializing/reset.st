reset
	examples := WeakIdentityKeyDictionary new.
	Smalltalk garbageCollect; garbageCollectMost.
	GTExample allSubInstances do: [ :each | [ each detachFromSystem ] on: Error do: [ " ignore / do not abort " ] ].
	GTExampleProxy allSubInstances do: [ :each | [ each detachFromSystem ] on: Error do: [ " ignore / do not abort " ] ].
	GTExampleResult allSubInstances do: [ :each | [ each detachFromSystem ] on: Error do: [ " ignore / do not abort " ] ].
	Smalltalk garbageCollect; garbageCollectMost.