menu
addAllCriticsToFalsePositive

	(criticsModel listItems 
		groupedBy: [:each | checker manifestBuilderOf: each]) 
			keysAndValuesDo: [:key :value | 
					self addAllCriticToFalsePositive: value on: key].
	self updateList
			