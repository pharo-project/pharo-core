testWeakInstance
	| createBlock string1 string2 |
	createBlock := [(String new: 3)
		at: 1 put: $n;
		at: 2 put: $e;
		at: 3 put: $w;
		yourself ].
	string1 := createBlock value.
	string2 := createBlock value.
	
	table at: string1 put: 'string1'.
	table at: string2 put: 'string2'.
	self assert: (table at: string1) = 'string1'.
	self assert: (table at: string2) = 'string2'.
	self deny: (table includesKey: createBlock value).
	self assert: table size = 2.
	string1 := nil.
	string2 := nil.
	Smalltalk garbageCollect.
	
	string1 := createBlock value.
	self deny: (table includesKey: string1).
	table keysAndValuesDo: [ :key :value | ]. "that should acutally not be needed"
	self assert: table isEmpty.