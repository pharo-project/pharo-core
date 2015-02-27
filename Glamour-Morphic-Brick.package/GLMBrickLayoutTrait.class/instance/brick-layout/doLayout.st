doLayout

	self isLayotingAllowed ifTrue: [
		GLMBrickLayouter uniqueInstance layoutIn: self ]