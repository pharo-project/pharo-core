notifyBanInitiatedFor: aQACritic of: anEntity

	self announce: (
		QAInitiateCriticBan new
			critic: aQACritic;
			entity: anEntity;
			yourself)
	