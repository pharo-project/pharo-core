building
buildCategories

	^ PluggableListMorph new
		on: self
		list: #categoryList 
		primarySelection: #categorySelected 
		changePrimarySelection: #categorySelected: 
		listSelection: #categoryAt: 
		changeListSelection: #categoryAt:put: 
		menu: #categoryMenu:  
		keystroke: nil;
		yourself