testSubscriptionReverseOrder
	self register: 'aFirstSubscription' atSystemPriority: 100.
	manager register: 'anObject'.

	self 
		assert: manager startupList 
		equals: #( 'aFirstSubscription' 'anObject' ).
	self 
		assert: manager shutdownList 
		equals: #( 'anObject' 'aFirstSubscription' ).