as yet unclassified
testAddKeymapCreatesShortcut
	KMRepository default
		initializeKeymap: #test
		executingOn: $r ctrl, $r asShortcut, $r asShortcut
		doing: [ :receiver | "nothing" ]
		inCategory: #Testing
		platform: #all.
	
	self assert: (KMRepository default categoryForName: #Testing ) allEntries size = 1.