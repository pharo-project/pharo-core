testCategoriesPriorityOrder
	manager register: 'anObject'.
	self register: 'aFirstSubscription' atSystemPriority: 100.
	
	self 
		assert: manager startupList 
		equals: #( 'aFirstSubscription' 'anObject' ).