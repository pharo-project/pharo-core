tests
testExternalResourceManagerFinalization

	
	| obj count |
	
	
	count := 0. 
	obj := NBMockExternalObject new.
	obj data: [ count := count + 1 ].
	
	
	obj registerAsExternalResource.
	obj := nil.
	Smalltalk garbageCollect; garbageCollect.
	
	self assert: (count = 1)