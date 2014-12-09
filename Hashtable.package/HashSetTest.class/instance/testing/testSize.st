testSize
	self assert: set size = 0.
	1 to: 10 do: [ :each |		
		set add: each.
		set size = each ].
	1 to: 10 do: [ :each |		
		set add: each.
		set size = 10 ].
	
	10 to: 1 by: -1 do: [ :each |		
		set size = each.
		set remove: each ].
	
	self assert: set size = 0.