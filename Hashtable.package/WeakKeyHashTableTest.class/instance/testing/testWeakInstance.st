testWeakInstance
	| createBlock string |
	createBlock := [(String new: 3)
		at: 1 put: $n;
		at: 2 put: $e;
		at: 3 put: $w;
		yourself ].
	string := createBlock value.
	
	table at: string put: true.
	self assert: (table at: string).
	self assert: (table at: createBlock value).
	self assert: table size = 1.
	string := nil.
	Smalltalk garbageCollect.
	
	string := createBlock value.
	self deny: (table includesKey: string).
	self assert: table isEmpty.