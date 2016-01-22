notifyEntity: anEntity criticizedWith: critics

	self announce: (
		ReEntityCriticized new 
			critics: critics;
			entity: anEntity;
			yourself)