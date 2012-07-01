menus
categoryListMenu: aMenu 
	categorySelection
		ifNotNil: [aMenu
				add: (categorySelection = '*Extensions'
						ifTrue: ['Load all extension methods' translated]
						ifFalse: ['Load class category {1}' translated format: {categorySelection}])
				action: #loadCategorySelection].
	^ aMenu