filterImpactCodeChanges

	self addFilter: (EpImpactCodeChangeFilter new environment: self class environment; yourself)