testKeysAndValuesDo
	| keys |
	keys := (1 to: 100) asOrderedCollection collect: [ :each | each asString ].
	keys do: [ :each |
		table at: each put: each ].
	table keysAndValuesDo: [ :key :value |
		self assert: key = value.
		self assert: (keys includes: key).
		keys remove: key ifAbsent: [ self fail ] ].
	self assert: keys isEmpty