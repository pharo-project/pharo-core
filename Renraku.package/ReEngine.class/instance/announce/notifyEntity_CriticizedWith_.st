notifyEntity: anEntity CriticizedWith: critics

	self announce: (
		ReEntityCriticized new 
			critics: critics;
			entity: anEntity;
			yourself)