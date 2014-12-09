testValues
	| keys |
	keys := (1 to: 100) asOrderedCollection collect: [ :each | each asString ].
	keys do: [ :each |
		table at: each put: each , '0' ].
	self assert: ((table values collect: [ :each | each asNumber ]) asArray sort = (10 to: 1000 by: 10) asArray)