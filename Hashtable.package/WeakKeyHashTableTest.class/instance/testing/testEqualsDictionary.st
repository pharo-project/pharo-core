testEqualsDictionary
	| dictionary |
	dictionary := Dictionary new.
	0 to: testsize do: [ :each |
		dictionary at: each put: each asString.
		table at: each put: each asString ].
	
	self assert: table = dictionary