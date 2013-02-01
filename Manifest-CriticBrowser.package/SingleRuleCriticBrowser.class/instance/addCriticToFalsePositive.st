menu
addCriticToFalsePositive

	criticsModel selectedItems
		ifNotNil: [:items | 
			(items groupedBy: [:each | checker manifestBuilderOf: each]) 
				keysAndValuesDo: [:key :value |
					self addAllCriticToFalsePositive: value on: key]].
		self updateList