changeset menu
removeContainedInClassCategories
	| matchExpression |
	myChangeSet removePreamble.
	matchExpression :=  UIManager default request: 'Enter class category name (wildcard is ok)' initialAnswer: 'System-*'. 
	matchExpression ifNil: [^ self].
	(Smalltalk globals organization categories
		select: [:each | matchExpression match: each])
		do: [:eachCat | 
			| classNames | 
			classNames := Smalltalk globals organization listAtCategoryNamed: eachCat.
			classNames
				do: [:eachClassName | 
					myChangeSet removeClassChanges: eachClassName.
					myChangeSet removeClassChanges: eachClassName , ' class'].
			self showChangeSet: myChangeSet]