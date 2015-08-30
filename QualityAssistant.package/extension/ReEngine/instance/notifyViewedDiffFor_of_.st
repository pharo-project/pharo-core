notifyViewedDiffFor: aQACritic of: anEntity

	self announce: (
		QAViewedDiff new
			critic: aQACritic;
			entity: anEntity;
			yourself)
	