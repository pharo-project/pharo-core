testEqualsSet
	| set2 |
	set2 := Set new.
	0 to: 10 do: [ :each |
		set2 add: each.
		set add: each ].	
		
	self assert: set = set2