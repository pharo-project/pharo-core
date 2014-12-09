testKeys
	| keys |
	keys := (1 to: 100) asOrderedCollection collect: [ :each | each asString ].
	keys do: [ :each |
		table at: each put: each , '0' ].
	self assert: ((table keys collect: [ :each | each asNumber ]) asArray sort = (1 to: 100) asArray)
