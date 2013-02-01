private
addAllItems
	| tmp |
	
	tmp := self sort: (selectedModel listItems asOrderedCollection addAll: (toSelectModel listItems);yourself ).

	selectedModel  items: tmp.
	toSelectModel  items: {}.
		
	toSelectModel updateList.
	selectedModel updateList.  	  