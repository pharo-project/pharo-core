testDo
	0 to: 10 do: [ :each |
		set add: each ].
	set do: [ :each |
		self assert: ((0 to: 10) includes: each)].