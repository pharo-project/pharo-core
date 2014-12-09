testEqualsTransitive
	| table2 |
	table2 := table species new.
	0 to: testsize do: [ :each |
		table2 at: each put: each asString.
		table at: each put: each asString ].
	
	self assert: table = table2.
	self assert: table2 = table