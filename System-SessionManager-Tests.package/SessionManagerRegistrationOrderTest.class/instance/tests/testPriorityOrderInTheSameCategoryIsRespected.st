testPriorityOrderInTheSameCategoryIsRespected
	self
		register: 'aFirstSubscription' atSystemPriority: 100;
		register: 'aSecondSubscription' atSystemPriority: 110;
		register: 'aThirdSubscriptionThatShouldGoFirst' atSystemPriority: 90.

	self 
		assert: manager startupList 
		equals: #( 'aThirdSubscriptionThatShouldGoFirst' 'aFirstSubscription' 'aSecondSubscription' ).