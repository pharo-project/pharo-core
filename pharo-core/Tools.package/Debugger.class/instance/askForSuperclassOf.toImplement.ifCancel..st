private
askForSuperclassOf: aClass toImplement: aSelector ifCancel: cancelBlock
	| classes chosenClassIndex |
	classes := aClass withAllSuperclasses.
	chosenClassIndex := UIManager default 
		chooseFrom: (classes collect: [:c | c name])
		title: 'Define #', aSelector, ' in which class?'.
	chosenClassIndex = 0 ifTrue: [^ cancelBlock value].
	^ classes at: chosenClassIndex