menu
	^ MenuMorph new
		add: 'do it (d)' selector: #doIt;
		add: 'print it (p)' selector: #printIt;
		add: 'inspect it (i)' selector: #inspectIt;
		yourself