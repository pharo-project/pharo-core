notifyCritic: aCritic descriptionViewedFor: anEntity 
	

	self announce: (
		ReCriticDescriptionViewed new 
			critic: aCritic;
			entity: anEntity;
			yourself)