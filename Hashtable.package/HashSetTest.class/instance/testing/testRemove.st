testRemove
	0 to: 10 do: [ :each |
		set add: each ].
	0 to: 10 do: [ :each |
		set remove: each ].
	0 to: 10 do: [ :each |
		self deny: (set includes: each) ]