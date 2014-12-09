testAdd
	| set2 |
	0 to: 10 do: [ :each |
		set add: each ].
	set2 := set species new.
	11 to: 20 do: [ :each |
		set2 add: each ].
	set2 addAll: set.
	0 to: 20 do: [ :each |
		self assert: (set2 includes: each) ].