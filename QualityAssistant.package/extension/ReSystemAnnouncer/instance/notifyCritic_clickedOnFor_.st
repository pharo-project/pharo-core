notifyCritic: aCritic clickedOnFor: anEntity 
	
	self announce: (
		QACriticClickedOn new 
			critic: aCritic;
			entity: anEntity;
			yourself)