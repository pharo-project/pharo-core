setup
tearDown
	| cl |
	super tearDown.
	cl := Smalltalk globals at: className ifAbsent: [ ^ self ].
	cl
		removeFromChanges;
		removeFromSystemUnlogged