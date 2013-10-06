addItems
	
	toSelectModel selectedItems
		ifNotNil: [ :items |  
			selectedModel items: (self sort: (selectedModel listItems asOrderedCollection addAll: items; yourself) ).
			toSelectModel items: (self sort: (toSelectModel listItems asOrderedCollection removeAll: items; yourself) ) ].
		toSelectModel updateList.
		selectedModel updateList.  	  