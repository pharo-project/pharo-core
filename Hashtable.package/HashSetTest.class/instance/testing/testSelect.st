testSelect
	| result |
	0 to: 10 do: [ :each |
		set add: each ].
	
	result := set select: [ :each | each even ].
	self assert: result size = 6.
	self assert: result = (0 to: 10 by: 2) asSet.