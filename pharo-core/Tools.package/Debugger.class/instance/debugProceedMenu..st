context stack menu
debugProceedMenu: aMenu
	^ aMenu
		labels:
			('Proceed
Debug' collect: [ :l | l translated ])
		lines: #()
		selections: #(#proceed #debug)