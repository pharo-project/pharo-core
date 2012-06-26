as yet unclassified
testAttachKeymapAttaches
	KMFactory keymapContainer
		initializeKeymap: #test
		executingOn: $r ctrl, $r asShortcut, $r asShortcut
		doing: [ :receiver | "nothing" ]
		inCategory: #Testing
		platform: #all..

	KMFactory keymapContainer attachCategoryName: #Testing to: KMMockMorph.
	
	self assert: ((KMFactory keymapContainer categoriesForClass: KMMockMorph ) anySatisfy: [ :c | c name = #Testing ]).