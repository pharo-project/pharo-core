notifyCriticsSeen: critics of: anEntity

	self announce: (
		QACriticsSeen new
			critics: critics;
			entity: anEntity;
			yourself)
	