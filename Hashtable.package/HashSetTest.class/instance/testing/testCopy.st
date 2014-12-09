testCopy
	| newSet |
	0 to: 10 do: [ :each |
		set add: each ].
	newSet := set copy.
	newSet add: 11.
	self assert: (newSet includes: 11).
	self deny: (set includes: 11).
	self assert: (newSet = (set copyWith: 11))