filterCategories
	| pattern |
	pattern := UIManager default 
		request: 'Pattern to select categories:' 
		initialAnswer: '*'.
	pattern isNil ifTrue: [ ^ self ].
	categoriesSelected := (categories 
		select: [ :each | pattern match: each ]) asSet.
	self changed: #allSelections; changed: #categorySelected; updateClasses