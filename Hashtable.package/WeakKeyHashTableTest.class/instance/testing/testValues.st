testValues
	| keys |
	keys := (1 to: 100) asOrderedCollection collect: [ :each | each asString ].
	keys do: [ :each |
		table at: each put: each ].
	self assert: ((table values collect: [ :each | each asNumber ]) asArray sort = (1 to: 100) asArray)