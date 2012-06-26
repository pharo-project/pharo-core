menu
listMenu: aMenu
	^ aMenu
		labels:
			({ 'Proceed' .
'Debug calling process' .
'Browse full'} collect: [ :l | l translated ])
		lines: #()
		selections: #(#proceed #debug #browseMethodFull)