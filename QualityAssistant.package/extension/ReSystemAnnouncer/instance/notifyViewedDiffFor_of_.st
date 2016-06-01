notifyViewedDiffFor: aQACritique of: anEntity

	self announce: (
		QAViewedDiff new
			critic: aQACritique;
			entity: anEntity;
			yourself)
	