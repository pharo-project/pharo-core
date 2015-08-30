notifyCritic: aCritic of: anEntity BannedOn: anEntityBanLevel

	self announce: (
		ReCriticBanned new
			critic: aCritic;
			entity: anEntity;
			entityBanLevel: anEntityBanLevel;
			yourself)