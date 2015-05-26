testFinalization

	| reg objs count |
	
	reg := NBFinalizationRegistry new.
	count := 0.
	reg freeItemsDo: [:item | count := count + 1].
	
	self assert: count = reg initialSize.
	
	objs := OrderedCollection new.
	133 timesRepeat: [ reg add: (objs add: Object new) ].
	
	count := 0.
	reg freeItemsDo: [:item | count := count + 1].

	self assert: reg items size - count = 133.
	
	objs := nil.
	Smalltalk garbageCollect.
	
	count := 0.
	reg freeItemsDo: [:item | count := count + 1].
	
	self assert: count = reg items size.
	
	reg reset.
	count := 0.
	reg freeItemsDo: [:item | count := count + 1].
	
	self assert: count = reg initialSize.
