notifyCritic: aCritic of: anEntity bannedOn: anEntityBanLevel

	self announce: (
		ReCriticBanned new
			critic: aCritic;
			entity: anEntity;
			entityBanLevel: anEntityBanLevel;
			yourself)