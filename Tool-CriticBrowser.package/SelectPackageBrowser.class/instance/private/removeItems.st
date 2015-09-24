removeItems
	
	selectedModel selectedItems
		ifNotNil: [:items | 
			toSelectModel items: (self sort: (toSelectModel listItems asOrderedCollection addAll: items; yourself)).
			selectedModel items: (self sort: (selectedModel listItems asOrderedCollection removeAll: items; yourself)) ].
		toSelectModel updateList.
		selectedModel updateList.  	  