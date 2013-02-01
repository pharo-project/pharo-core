menu
removeAllCriticsToFalsePositive

	(criticsModel  listItems groupedBy: [:each | checker manifestBuilderOf: each]) 
		keysAndValuesDo: [:key :value |
			self removeAllCriticToFalsePositive: value on: key].
	self updateList
			