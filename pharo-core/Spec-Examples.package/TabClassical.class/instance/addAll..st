display
addAll: window
	
	window
		addMorph: tab
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 0)
				offsets: (0 @ 0 corner: 0 @ 35)).
				
	window
		addMorph: container
		fullFrame: (LayoutFrame 
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (0 @ 35 corner: 0 @ 0)).
				
	tab tabs size = 0 ifTrue: [ ^ self ].
	tab color: Color white darker darker