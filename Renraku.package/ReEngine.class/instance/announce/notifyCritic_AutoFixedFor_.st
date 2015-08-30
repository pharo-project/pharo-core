notifyCritic: aCritic AutoFixedFor: anEntity

	self announce: (
		ReCriticAutofixed new
			critic: aCritic;
			entity: anEntity;
			yourself)