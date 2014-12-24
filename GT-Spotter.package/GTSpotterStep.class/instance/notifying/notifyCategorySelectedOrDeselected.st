notifyCategorySelectedOrDeselected

	self isCategorySelected
		ifTrue: [ self announcer announce: GTSpotterCategorySelected new ]
		ifFalse: [ self announcer announce: GTSpotterCategoryDeselected new ]